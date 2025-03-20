import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_consumer_app/core/colors/colors.dart';
import 'package:flutter_consumer_app/core/constant/constant.dart';
import 'package:flutter_consumer_app/features/chat_section/presentation/pages/chat_screen_custom.dart';
import 'package:flutter_consumer_app/features/home_section/domain/entities/response/all_partners_entity.dart';
import 'package:flutter_consumer_app/shared/widgets/cached_image.dart';
import 'package:flutter_consumer_app/shared/widgets/custom_container_widget.dart';
import 'package:flutter_consumer_app/shared/widgets/icon_button_widget.dart';
import 'package:flutter_consumer_app/utils/navigation.dart';
import 'package:sizer/sizer.dart';

class TopPartnerCardWidget extends StatelessWidget {
  const TopPartnerCardWidget({
    super.key,
    required this.width,
    required this.entity,
    required this.index,
  });

  final double width;
  final int index;
  // final dynamic entity;
  final List<ProfileElement> entity;

  @override
  Widget build(BuildContext context) {
    final profile = entity[index].profile.profileDetails;
    final partner = entity[index];

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
                  itemCount: profile.media.length,
                  pagination: const SwiperPagination(
                    builder: DotSwiperPaginationBuilder(
                        color: colorgrey,
                        activeColor: colorwhite,
                        size: 5,
                        activeSize: 7),
                  ),
                  // control: const SwiperControl(),
                  itemBuilder: (context, index) {
                    return CustomImage(
                      fit: BoxFit.cover,
                      imageUrl: profile.media[index].mediaType ?? '',
                      height: 20.h,
                      width: 80.w,
                    );
                  },
                ),
              ),
              Positioned(
                top: 0,
                left: 0,
                child: Container(
                  decoration: const BoxDecoration(
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(20))),
                  width: width * 0.08,
                  child: Image.asset('assets/images/preferedpartnericon.png'),
                ),
              ),
              Positioned(
                right: 10,
                top: 10,
                child: Container(
                  decoration: BoxDecoration(
                      color: colorwhite.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(25)),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Icon(
                      Icons.favorite_border_outlined,
                      color: colorblack.withOpacity(0.5),
                      size: 18,
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
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
            child: Row(
              children: [
                CustomImage(
                  imageUrl: profile.profileImage,
                  borderRadius: BorderRadius.circular(40),
                  fit: BoxFit.scaleDown,
                  height: 4.h,
                  width: 4.h,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${profile.city}, ${profile.state}',
                        style: TextStyle(
                            color: colorblack.withOpacity(0.7), fontSize: 14),
                      ),
                      sbox5,
                      Text(
                        '₹${profile.unlockCost}',
                        style: const TextStyle(color: colorblack, fontSize: 16),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                IconButtonWidget(
                  buttonName: 'Chat',
                  onTap: () => AppNavigation.pushNavigation(
                      context,
                      ChatScreenCustom(
                        partnerUuid: partner.profile.partnerUuid)),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
            child: Row(
              children: [
                SizedBox(
                  width: width * 0.5,
                  child: Text(
                    '${profile.profileName}, ${profile.profileHeadline}',
                    style: TextStyle(
                        overflow: TextOverflow.clip,
                        color: colorblack.withOpacity(0.7),
                        fontSize: 16),
                  ),
                ),
                const Spacer(),
                Row(
                  children: [
                    const Icon(
                      Icons.star,
                      size: 18,
                      color: colorred,
                    ),
                    const Text(
                      '4.3',
                      style: TextStyle(
                          fontSize: 16,
                          color: colorred,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      '(365 gigs)',
                      style: TextStyle(
                          fontSize: 16,
                          color: colorblack.withOpacity(0.5),
                          fontWeight: FontWeight.w100),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
