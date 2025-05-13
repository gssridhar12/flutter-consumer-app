
import 'package:flutter/material.dart';
import 'package:flutter_consumer_app/core/colors/colors.dart';
import 'package:flutter_consumer_app/core/constant/constant.dart';
import 'package:flutter_consumer_app/features/home_section/domain/entities/response/package_enitity.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/widgets/container_chip_widget.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/widgets/like_button.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/widgets/most_booked_package_tile.dart';
import 'package:flutter_consumer_app/features/partner_profile/presentation/pages/partner_profile_animated.dart';
import 'package:flutter_consumer_app/main.dart';
import 'package:flutter_consumer_app/shared/widgets/bulleted_text_widget.dart';
import 'package:flutter_consumer_app/shared/widgets/cached_image.dart';
import 'package:flutter_consumer_app/utils/navigation.dart';
import 'package:sizer/sizer.dart';

class PackageCardWidget extends StatefulWidget {
  const PackageCardWidget({
    Key? key,
    // required this.width,
    required this.isGuestUser,
    required this.onTap,
    required this.packageEntity,
    required this.index,
    required this.uuid,
    required this.packageUuid,
  }) : super(key: key);

  // final double width;
  final bool isGuestUser;
  final int index;
  final PackageEntity packageEntity;
  final void Function()? onTap;
  final String uuid;
  final String packageUuid;

  @override
  State<PackageCardWidget> createState() => _PackageCardWidgetState();
}

class _PackageCardWidgetState extends State<PackageCardWidget>
    with AutomaticKeepAliveClientMixin {
  final String? userId = localDb.getString('id') ?? "";

  @override
  Widget build(BuildContext context) {
    super.build(context);

    final package = widget.packageEntity.data!.packages![widget.index];

    return GestureDetector(
      onTap: () {
        widget.onTap!();
      },
      child: Padding(
        padding: const EdgeInsets.only(right: padding),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: padding),
                  child: Row(
                    children: [
                      
                      LikeButton(packageUuid: package.package!.packageUuid!, userId: userId,widgetType: WidgetType.homescreen,),
                      
                      sboxW,
                      FittedBox(
                        child: Text(
                          package.package!.packageName ?? "",
                          style: TextStyle(
                              overflow: TextOverflow.ellipsis,
                              fontWeight: FontWeight.w500,
                              color: colorblack.withOpacity(0.7),
                              fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 80.w,
                  // height: widget.width * 0.45,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 5,
                            spreadRadius: 1,
                            color: colorblack.withOpacity(0.1))
                      ],
                      borderRadius: BorderRadius.circular(12),
                      color: colorwhite),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Flexible(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                sbox,
                                PackageRatingAndBookingsCountWidget(
                                    count: package.megmoGigsCount.toString(),
                                    rating: package.packageReviewAverage != null
                                        ? double.parse(package
                                                .packageReviewAverage!
                                                .toStringAsFixed(1))
                                            .toString()
                                        : "Not Rated"),
                                         BulletedTextWidget(
                                    fontSize: 14,
                                    width: 100.w,
                               
                                    text: package.package?.packageInclusions ??
                                        "", // Ensure no null value
                                  ),
                                  // Container(
                            //   // transform:
                            //   //     Matrix4.translationValues(-23.0, 0.0, 0.0),
                            //   transformAlignment: Alignment.centerRight,
                            //   padding: EdgeInsets.zero,
                            //   margin: EdgeInsets.zero,
                            //   alignment: Alignment
                            //       .centerLeft, // Aligning the container's content to the left
                            //   child: HtmlWidget(
                            //     textStyle: const TextStyle(
                            //         height: 1.3,
                            //         fontSize: 14,
                            //         overflow: TextOverflow.ellipsis),
                            //     package.package?.packageInclusions??"",
                            //     // '<ul><li><strong>Duration : </strong>1 hour</li><li><strong>Equipment : </strong>Icluded</li></ul>',
                            //   ),
                            // ),

                                // ListView.builder(
                                //   physics: const NeverScrollableScrollPhysics(),
                                //   padding: const EdgeInsets.symmetric(
                                //       horizontal: 15),
                                //   shrinkWrap: true,
                                //   itemCount:
                                //       package.package.packageInclusions.length,
                                //   itemBuilder:
                                //       (BuildContext context, int index) {
                                //     return Column(
                                //       mainAxisSize: MainAxisSize.min,
                                //       children: [
                                //         BulletedTextWidget(
                                //           fontSize: 14,
                                //           width: 100.w,
                                //           text: package
                                //               .package.packageInclusions[index],
                                //         ),
                                //         sbox,
                                //       ],
                                //     );
                                //   },
                                // ),
                                // Container(
                                //   transform:
                                //       Matrix4.translationValues(15.0, 0.0, 0.0),
                                //   transformAlignment: Alignment.centerRight,
                                //   padding: EdgeInsets.zero,
                                //   margin: EdgeInsets.zero,
                                //   alignment: Alignment
                                //       .centerLeft, // Aligning the container's content to the left
                                //   child: HtmlWidget(
                                //     textStyle: const TextStyle(
                                //         fontSize: 14,
                                //         wordSpacing: 15,
                                //         overflow: TextOverflow.ellipsis),
                                //     package.package!.packageDescription!,
                                //     // '<ul><li><strong>Duration : </strong>1 hour</li><li><strong>Equipment : </strong>Icluded</li></ul>',
                                //   ),
                                // ),
                                
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            child: Stack(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(padding),
                                  child: SizedBox(
                                      height: 25.w,
                                      width: 25.w,
                                      child: CustomImage(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          imageUrl: package
                                              .package!.packageCoverImage!)),
                                ),
                                Positioned(
                                  top: 85,
                                  right: 20,
                                  left: 20,
                                  bottom: 0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: colorblack, width: 0.2),
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 5,
                                            spreadRadius: 1,
                                            color: colorblack.withOpacity(0.1),
                                          )
                                        ],
                                        borderRadius: BorderRadius.circular(6),
                                        color: colorwhite),
                                    child: Center(
                                      child: widget.isGuestUser != true
                                          ? FittedBox(
                                              child: Text(
                                                '₹ ${package.package!.packageCost}',
                                                style: const TextStyle(
                                                    color: colorblack),
                                              ),
                                            )
                                          : const FittedBox(
                                              child: Text(
                                                'See Price',
                                                style:
                                                    TextStyle(color: colorred),
                                              ),
                                            ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          // ListView.builder(
                          //   shrinkWrap: true,
                          //   itemCount: package.package!.packageKeywords!.length,
                          //   itemBuilder: (context, index) {
                          //     return Wrap(
                          //       children: [
                          //         ContainerChipWidget(
                          //             text: package.package!.packageKeywords!
                          //                     .isNotEmpty
                          //                 ? package.package!.packageKeywords![0]
                          //                 : "Not Found"),
                          //       ],
                          //     );
                          //   },
                          // ),
                          // Padding(
                          //   padding: const EdgeInsets.all(8.0),
                          //   child: Row(
                          //     children: [
                          //       ContainerChipWidget(
                          //           text: package.package!.packageKeywords!
                          //                   .isNotEmpty
                          //               ? package.package!.packageKeywords![0]
                          //               : "Not Found"),
                          //       ContainerChipWidget(
                          //           text: package.package!.packageKeywords!
                          //                   .isNotEmpty
                          //               ? package.package!.packageKeywords![0]
                          //               : "Not Found"),
                          //     ],
                          //   ),
                          // ),
                          Wrap(
                                alignment: WrapAlignment.start,
                                spacing: 8.0,
                                runSpacing: 4.0,
                                children: List.generate(
                                  package.package!.packageTags!.length,
                                  (index) {
                                    return ContainerChipWidget(
                                      //width: widget.width,
                                      text: package
                                              .package!.packageTags!.isNotEmpty
                                          ? package.package!.packageTags![
                                              index] 
                                          : "Not Found",
                                    );
                                  },
                                ),
                              )
                        ],
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    AppNavigation.pushNavigation(
                        context,
                        PartnerProfileAnimated(
                            uuid: package.package!.partnerUuid!));
                  },
                  child: SizedBox(
                    width: 80.w,
                    child: Row(
                      children: [
                        SizedBox(
                          height: 5.h,
                          width: 5.h,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: CustomImage(
                                imageUrl: package.profileImage ?? ''),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: const EdgeInsets.only(
                                  right: 10, left: 10, top: 10),
                              width: 40.w,
                              child: Text(
                                "${package.profileName}",
                                style: const TextStyle(
                                    fontSize: 18,
                                    color: colorblack,
                                    overflow: TextOverflow.ellipsis,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            PackageRatingAndGigsCountWidget(
                              rating: package.packageReviewAverage
                                      ?.toStringAsFixed(1) ??
                                  "",
                              count: package.packageBookingCount.toString(),
                            )
                          ],
                        ),
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text(
                            'View Profile >',
                            style: TextStyle(
                                fontSize: 12,
                                color: colorblack.withOpacity(0.7)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  //     );
                  //   }
                  //   return const Text('Profile Data Api Failed');
                  // },
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
