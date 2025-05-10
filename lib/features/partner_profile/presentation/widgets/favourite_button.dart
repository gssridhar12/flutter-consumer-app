import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_consumer_app/core/colors/colors.dart';
import 'package:flutter_consumer_app/features/home_section/domain/entities/request/add_like_request.dart';
import 'package:flutter_consumer_app/features/home_section/domain/entities/response/get_like_entity.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/bloc/bloc/partner_like_bloc_bloc.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/bloc/bloc/partner_like_bloc_event.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/bloc/bloc/partner_like_bloc_state.dart';
import 'package:flutter_consumer_app/shared/widgets/container_icon_widget.dart';
import 'package:flutter_consumer_app/utils/snack_bar.dart';

class ProfileFavoriteButtonWidget extends StatefulWidget {
  const ProfileFavoriteButtonWidget(
      {super.key, this.userId, required this.partnerUuid});

  final String? userId;
  final String partnerUuid;

  @override
  State<ProfileFavoriteButtonWidget> createState() =>
      ProfileFavoriteButtonStateWidget();
}

class ProfileFavoriteButtonStateWidget
    extends State<ProfileFavoriteButtonWidget> {
  bool isFavourite = false;

  bool checkIfLiked(List<PartnerData> partner, String partnerUuid) {
    if (partner.isEmpty) return false;
    final isLiked = partner
        .any((e) => e.profileUuid.contains(partnerUuid) && e.isLiked == true);
    debugPrint(isLiked.toString());
    return isLiked;
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 30,
      top: 60,
      child: BlocBuilder<PartnerLikeBloc, PartnerLikeBlocState>(
        builder: (context, likeState) {
          if (likeState is GetPartnerLikeLoading) {
            const SizedBox(
              child: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }
          if (likeState is GetPartnerLikeFailed) {
            const Icon(
              Icons.abc,
              color: colorred,
            );
          }
          if (likeState is GetPartnerLikeSuccess) {
            isFavourite = checkIfLiked(
                likeState.getPartnerLikeEntity.data, widget.partnerUuid);
            debugPrint("After checkIfLiked: $isFavourite");
            return ContainerIconWidget(
              onTap: () {
                if (widget.userId != null && widget.userId != '') {
                  BlocProvider.of<PartnerLikeBloc>(context).add(AddPartnerLike(
                      addPartnerLikeRequest: AddPartnerLikeRequest(
                          userUuid: widget.userId!,
                          profileUuid: widget.partnerUuid,
                          isLiked: !isFavourite)));
                }
              },
              isFavouite: !isFavourite,
              icon: Icons.favorite,
            );
          }
          return BlocListener<PartnerLikeBloc, PartnerLikeBlocState>(
            child: ContainerIconWidget(
              onTap: () {
                if (widget.userId != null && widget.userId != '') {
                  BlocProvider.of<PartnerLikeBloc>(context).add(AddPartnerLike(
                      addPartnerLikeRequest: AddPartnerLikeRequest(
                          userUuid: widget.userId!,
                          profileUuid: widget.partnerUuid,
                          isLiked: !isFavourite)));
                }
              },
              isFavouite: !isFavourite,
              icon: Icons.favorite,
            ),
            listener: (context, addLikeState) {
              if (addLikeState is AddPartnerLikeLoading) {
                const SizedBox(
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                );
              }
              if (addLikeState is AddPartnerLikeFailed) {
                const Icon(
                  Icons.ac_unit_rounded,
                  color: colorred,
                );
              }
              if (addLikeState is AddPartnerLikeSuccess) {
                if (addLikeState.addPartnerLikeEntity.data?.isLiked == true) {
                  Utils.showSnackbar('Added to Favourties');
                  SchedulerBinding.instance.addPostFrameCallback((_) {
                    setState(() {
                      isFavourite = !isFavourite;
                    });
                  });
                } else {
                  Utils.showSnackbar('Removed from Favourties');
                  SchedulerBinding.instance.addPostFrameCallback((_) {
                    setState(() {
                      isFavourite = !isFavourite;
                    });
                  });
                }
              }
            },
          );
        },
      ),
    );
  }
}
