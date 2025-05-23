import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/bloc/bloc/partner_like_bloc_bloc.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/bloc/bloc/partner_like_bloc_state.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/widgets/cards/profile_card.dart';
import 'package:flutter_consumer_app/features/partner_profile/domain/usecases/get_partner_profile.dart';
import 'package:flutter_consumer_app/features/partner_profile/presentation/bloc/partner_profile_bloc/partner_profile_bloc.dart';
import 'package:flutter_consumer_app/main.dart';
import 'package:flutter_consumer_app/shared/widgets/error_widget.dart';
import 'package:get_it/get_it.dart';

class ProfileLikedTabWidget extends StatelessWidget {
  ProfileLikedTabWidget({super.key});

  final String userId = localDb.getString('id')!;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return BlocBuilder<PartnerLikeBloc, PartnerLikeBlocState>(
      builder: (context, state) {
        if (state is GetPartnerLikeLoading) {
          return const CircularProgressIndicator();
        }
        if (state is GetPartnerLikeFailed) {
          return const ShowErrorWidget(
            errorText: "No Partners found",
          );
        }
        if (state is GetPartnerLikeSuccess) {
          final data = state.getPartnerLikeEntity.data;
          // final partnerId = getLikedProfiles(data, userId);
          if (data.isEmpty) {
            return const ShowErrorWidget(errorText: "No Partners found");
          }
          return ListView.builder(
            physics: const BouncingScrollPhysics(),
            shrinkWrap: true,
            itemCount: data.length,
            itemBuilder: (BuildContext context, int index) {
              final profileUuid = data[index].profileUuid;

              return BlocProvider(
                key: ValueKey(profileUuid), // Ensure each card has a unique key
                create: (context) => PartnerProfileBloc(
                  profileUsecase: GetIt.I<GetPartnerProfileUsecase>(),
                )..add(GetPartnerProfile(profileUuid)),
                child: ProfileCard(
                  width: width,
                  partnerUuid: profileUuid,
                  index: index,
                ),
              );
            },
          );
          //  ListView.builder(
          //   physics: const BouncingScrollPhysics(),
          //   shrinkWrap: true,
          //   itemCount: data.length,
          //   itemBuilder: (BuildContext context, int index) {
          //     return ProfileCard(
          //       width: width,
          //       partnerUuid: data[index].profileUuid,
          //       index: index,
          //     );
          //   },
          // );
        }
        return const Text('No liked profile ');
      },
    );
  }
}
