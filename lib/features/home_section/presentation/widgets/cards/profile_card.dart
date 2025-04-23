import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_consumer_app/core/colors/colors.dart';
import 'package:flutter_consumer_app/core/constant/constant.dart';
import 'package:flutter_consumer_app/features/chat_section/presentation/pages/chat_screen_custom.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/widgets/like_button.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/widgets/most_booked_package_tile.dart';
import 'package:flutter_consumer_app/features/partner_profile/presentation/bloc/partner_profile_bloc/partner_profile_bloc.dart';
import 'package:flutter_consumer_app/main.dart';
import 'package:flutter_consumer_app/shared/widgets/cached_image.dart';
import 'package:flutter_consumer_app/shared/widgets/custom_container_widget.dart';
import 'package:flutter_consumer_app/shared/widgets/icon_button_widget.dart';
import 'package:flutter_consumer_app/utils/extensions/padding_extension.dart';
import 'package:flutter_consumer_app/utils/navigation.dart';

class ProfileCard extends StatefulWidget {
  const ProfileCard({
    super.key,
    required this.width,
    required this.index,
    required this.partnerUuid,
  });

  final double width;
  final int index;
  final String partnerUuid;

  @override
  State<ProfileCard> createState() => _ProfileCardState();
}

class _ProfileCardState extends State<ProfileCard> {
  final String userId = localDb.getString('id')!;

  @override
  void initState() {
    context
        .read<PartnerProfileBloc>()
        .add(GetPartnerProfile(widget.partnerUuid));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PartnerProfileBloc, PartnerProfileState>(
      builder: (context, state) {
        if (state is GetPartnerProfileLoading) {
          return const SizedBox();
        }
        if (state is GetPartnerProfileFailed) {
          return const Text('something went wrong');
        }
        if (state is GetPartnerProfileSuccess) {
          final profile = state.partnerProfile.data!.profile!.profileDetails!;

          return CustomContainerWidget(
            child: Column(
              children: [
                Stack(
                  children: [
                    AspectRatio(
                      aspectRatio: 8 / 5,
                      child: Swiper(
                        viewportFraction: 1,
                        scale: 0.8,
                        itemCount: profile.media!.length,
                        pagination: const SwiperPagination(
                          builder: DotSwiperPaginationBuilder(
                              color: colorgrey,
                              activeColor: colorwhite,
                              size: 5,
                              activeSize: 7),
                        ),
                        // control: const SwiperControl(),
                        itemBuilder: (context, index) {
                          return SizedBox(
                            height: widget.width * 0.4,
                            width: widget.width,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: CustomImage(
                                  imageUrl:
                                      profile.media![index].mediaType ?? ""),
                            ),
                          );
                        },
                      ),
                    ),
                    Positioned(
                        top: 0,
                        left: 0,
                        child: Container(
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20))),
                          width: widget.width * 0.08,
                          child: Image.asset(
                              'assets/images/preferedpartnericon.png'),
                        )),
                    Positioned(
                      right: 10,
                      top: 10,
                      child: Container(
                        decoration: BoxDecoration(
                            color: colorwhite.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(25)),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: LikeButton(
                            packageUuid: widget.partnerUuid,
                            userId: userId,
                            widgetType: WidgetType.homescreen,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 50,
                      top: 10,
                      child: Container(
                        decoration: BoxDecoration(
                            color: colorwhite.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(25)),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Icon(
                            Icons.share,
                            color: colorblack.withOpacity(0.5),
                            size: 18,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10.0, vertical: 10),
                  child: Row(
                    children: [
                      SizedBox(
                          width: 40,
                          height: 40,
                          child: CustomImage(
                              borderRadius: BorderRadius.circular(40),
                              imageUrl: profile.profileCover ??
                                  ""
                                      "")),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '${profile.city}, ${profile.state}',
                              style: TextStyle(
                                  color: colorblack.withOpacity(0.7),
                                  fontSize: 14),
                            ),
                            sbox5,
                            Text(
                              '₹${profile.unlockCost}',
                              style: const TextStyle(
                                  color: colorblack, fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                      const Spacer(),
                      IconButtonWidget(
                        onTap: () {
                          AppNavigation.pushNavigation(
                              context,
                              ChatScreenCustom(
                                  partnerUuid: widget.partnerUuid));
                        },
                        buttonName: 'Chat',
                      )
                    ],
                  ),
                ),
                Row(
                  children: [
                    SizedBox(
                      width: widget.width * 0.5,
                      height: widget.width * 0.1,
                      child: Text(
                        '${profile.profileName}, ${profile.profileHeadline}',
                        style: TextStyle(
                            overflow: TextOverflow.ellipsis,
                            color: colorblack.withOpacity(0.7),
                            fontSize: 16),
                      ),
                    ),
                    const Spacer(),
                    const PackageRatingAndOrderCountWidget(
                      reviewCount: "0",
                    )
                  ],
                ).paddingSymmetric(horizontal: 10.0, vertical: 10)
              ],
            ),
          );
        }
        return const CircularProgressIndicator();
      },
    );
  }
}
