// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_consumer_app/core/colors/colors.dart';
import 'package:flutter_consumer_app/core/constant/constant.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/widgets/like_button.dart';
import 'package:flutter_consumer_app/main.dart';
import 'package:flutter_consumer_app/shared/widgets/cached_image.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:sizer/sizer.dart';
import '../../../../home_section/presentation/widgets/most_booked_package_tile.dart';
import '../../../../packages_section/domain/entities/package_details_entitiy.dart';
import '../../../domain/entities/get_bucket_entity.dart';

class ProfilePackageDetailsCard extends StatefulWidget {
  const ProfilePackageDetailsCard({
    super.key,
    required this.isGeuestUser,
    required this.package,
    required this.index,
    required this.Ratereview,
    this.onTap,
  });
  final bool isGeuestUser;
  final PackageDetails package;
  final int index;
  final Function()? onTap;
  final PackageReviewAvg Ratereview;

  @override
  State<ProfilePackageDetailsCard> createState() =>
      _ProfilePackageDetailsCardState();
}

class _ProfilePackageDetailsCardState extends State<ProfilePackageDetailsCard> {
  bool isBooked = false;
    final String userId = localDb.getString('id') ?? "";

  void handleBookButton(bool likeValue) {
    setState(() {
      isBooked = likeValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: double.infinity,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    widget.package.packageName ?? "Package HeadLine",
                    style: const TextStyle(
                        color: colorred,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(width: 8),
                PackageRatingAndReviewCountWidget(
                  color: colorblack.withOpacity(0.5),
                  review: widget.Ratereview.reviewCount.toString(),
                  reviewCount: widget.Ratereview.reviewCount.toString(),
                ),
                const SizedBox(width: 8),
                 LikeButton(packageUuid:widget.package.packageUuid!, userId: userId,widgetType: WidgetType.homescreen,),
                      
                //  LikeButton(
                //                       packageUuid: widget.package.packageUuid!,
                //                       userId: userId,
                //                       widgetType: WidgetType.packagescreen,
                //                     ),
                // const Icon(
                //   Icons.favorite_border_outlined,
                //   color: colorred,
                // ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12), color: colorwhite),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(padding),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                             transform:
                                Matrix4.translationValues(-23.0, 0.0, 0.0),
                          transformAlignment: Alignment.centerRight,
                            padding: EdgeInsets.zero,
                            margin: EdgeInsets.zero,
                            alignment: Alignment
                                .centerLeft, 
                            child: HtmlWidget(
                              
                              widget.package.packageInclusions ?? '',
                              textStyle: const TextStyle(
                                height: 1.5,
                                  overflow: TextOverflow.ellipsis,
                                  fontSize: 14,
                                  color: colorblack,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                          //const SizedBox(height: 8),
                        ],
                      ),
                    ),
                    Spacer(),
                             Stack(children: [
                          Padding(
                              padding: const EdgeInsets.all(padding),
                              child: CustomImage(
                                imageUrl: widget.package.packageCoverImage ?? '',
                                borderRadius: BorderRadius.circular(12),
                                fit: BoxFit.cover,
                                height: 10.h,
                                width: 10.h,
                              )),
                          Positioned(
                            top: 75,
                            right: 15,
                            left: 15,
                            bottom: 0,
                            child: Container(
                              width: 20.w,
                              height: 8.h,
                              decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                        blurRadius: 5,
                                        spreadRadius: 1,
                                        color: colorblack.withOpacity(0.1))
                                  ],
                                  borderRadius: BorderRadius.circular(6),
                                  color: colorwhite),
                              child: Center(
                                child: Text("Book",
                                  // widget.isGeuestUser
                                  //     ? '₹ book'
                                  //     : '₹ ${widget.package.packageCost.toString()}',
                                  style:  TextStyle(color: colorblack),
                                ),
                              ),
                            ),
                          ),
                        ])
                    // Use Stack to overlay the Book button on the image
                    // Padding(
                    //   padding: const EdgeInsets.all(padding),
                    //   child: Stack(
                    //     children: [
                    //       CustomImage(
                    //         imageUrl: widget.package.packageCoverImage ?? '',
                    //         borderRadius: BorderRadius.circular(12),
                    //         fit: BoxFit.cover,
                    //         height: 10.h,
                    //         width: 10.h,
                    //       ),
                    //       Positioned(
                    //         bottom: 5,
                    //         right: 10,
                    //         top: 50,
                    //         child: InkWell(
                    //           onTap: () {
                    //             handleBookButton(!isBooked);
                    //           },
                    //           child: Container(
                    //             width: 60,
                    //             height: 30,
                    //             decoration: BoxDecoration(
                    //               border: Border.all(
                    //                 color: Colors.black,
                    //                 width: 0.2,
                    //               ),
                    //               boxShadow: [
                    //                 BoxShadow(
                    //                   blurRadius: 5,
                    //                   spreadRadius: 1,
                    //                   color: Colors.black.withOpacity(0.1),
                    //                 ),
                    //               ],
                    //               borderRadius: BorderRadius.circular(6),
                    //               color: isBooked ? Colors.red : Colors.white,
                    //             ),
                    //             child: Center(
                    //               child: Text(
                    //                 'Book',
                    //                 style: TextStyle(
                    //                   color: isBooked
                    //                       ? Colors.white
                    //                       : Colors.black,
                    //                 ),
                    //               ),
                    //             ),
                    //           ),
                    //         ),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                  ],
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(right: 35, bottom: 10, top: 10),
                  child: Text(
                    // widget.isGeuestUser
                    //     ? '₹ book'
                    //     : 
                        '₹ ${widget.package.packageCost}',
                    style: const TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
