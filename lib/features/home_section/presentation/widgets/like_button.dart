import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_consumer_app/core/colors/colors.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/cubit/like_cubit.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/cubit/like_state.dart';
import 'package:flutter_consumer_app/injection_container.dart' as di;
import 'package:flutter_consumer_app/shared/widgets/container_icon_widget.dart';

class LikeButton extends StatefulWidget {
  const LikeButton({
    super.key,
    required this.packageUuid,
    required this.userId,
    required this.widgetType,
  });

  final String packageUuid;
  final String? userId;
  final WidgetType widgetType;

  @override
  State<LikeButton> createState() => _LikeButtonState();
}

class _LikeButtonState extends State<LikeButton> {
  late LikeCubit likeCubit;

  @override
  void initState() {
    super.initState();
    // Create the LikeCubit instance with the necessary parameters
    likeCubit =
        di.sl<LikeCubit>(param1: widget.userId, param2: widget.packageUuid);
    // Check if the package is liked after the widget build
    WidgetsBinding.instance.addPostFrameCallback((_) {
      likeCubit.checkIfLiked(
          packageUuid: widget.packageUuid,
          userId: widget.userId); // Ensure this is called after widget build
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: likeCubit,
      child: BlocBuilder<LikeCubit, LikeState>(
        builder: (context, state) {
          if (state.isLoading) {
            return const SizedBox.shrink();
          }
          return GestureDetector(
              onTap: () {
                context.read<LikeCubit>().toggleLike(
                    packageUuid: widget.packageUuid, userId: widget.userId);
              },
              child: widget.widgetType == WidgetType.homescreen
                  ? Icon(
                      state.isLiked ? Icons.favorite : Icons.favorite_border,
                      color: colorred,
                      size: 21,
                    )
                  : widget.widgetType == WidgetType.packagescreen
                      ? ContainerIconWidget(
                          onTap: () {
                            context.read<LikeCubit>().toggleLike(
                                packageUuid: widget.packageUuid,
                                userId: widget.userId);
                          },
                          icon: Icons.favorite,
                          isFavouite: !state.isLiked,
                        )
                      : const SizedBox.shrink());
        },
      ),
    );
  }
}

enum WidgetType { homescreen, packagescreen }
