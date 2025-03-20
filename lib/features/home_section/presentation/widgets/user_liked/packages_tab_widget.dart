import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_consumer_app/core/colors/colors.dart';
// import 'package:flutter_consumer_app/features/home_section/src/domain/entities/response/get_like_entity.dart';
// import 'package:flutter_consumer_app/features/home_section/src/domain/entities/response/get_package_like_entity.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/bloc/package_like_bloc/package_like_bloc_bloc.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/widgets/cards/package_card.dart';
import 'package:flutter_consumer_app/main.dart';
import 'package:flutter_consumer_app/shared/widgets/error_widget.dart';

class PackagesLikedTabWidget extends StatelessWidget {
  PackagesLikedTabWidget({
    super.key,
  });
  // final String packageUuid;

  final String userId = localDb.getString('id')!;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return BlocBuilder<PackageLikeBloc, PackageLikeBlocState>(
      builder: (context, state) {
        if (state is GetPackageLikeLoading) {
          return const SizedBox.shrink();
        }
        if (state is GetPackageLikeFailed) {
          return const Icon(
            Icons.access_alarms_sharp,
            color: colorred,
          );
        }
        if (state is GetPackageLikeSuccess) {
          final data = state.getPackageLikeEntity.data!.likedPackages;
          // final packageId = getLikedProfiles(data, userId);
          if (data!.isEmpty) {
            return const ShowErrorWidget(
              errorText: "You have no liked packages",
            );
          }
          return ListView.builder(
            physics: const BouncingScrollPhysics(),
            shrinkWrap: true,
            itemCount: data.length,
            itemBuilder: (BuildContext context, int index) {
              return PackageCard(
                isLiked: true,
                packages: data[index],
                width: width,
                index: index,
              );
            },
          );
        }
        return const Text('data');
      },
    );
  }
}
