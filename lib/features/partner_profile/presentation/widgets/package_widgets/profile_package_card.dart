import 'package:flutter/material.dart';
import 'package:flutter_consumer_app/core/colors/colors.dart';
import 'package:flutter_consumer_app/core/constant/constant.dart';
import 'package:flutter_consumer_app/features/partner_profile/domain/entities/get_bucket_entity.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/widgets/most_booked_package_tile.dart';
import 'package:flutter_consumer_app/shared/widgets/cached_image.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:sizer/sizer.dart';

class ProfilePackageCardWidget extends StatelessWidget {
  const ProfilePackageCardWidget(
      {super.key,
      required this.isGeuestUser,
      required this.package,
      required this.index,
      this.onTap});
  final bool isGeuestUser;
  final SelectedPackage package;
  final int index;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!();
      },
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 90.w,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    sboxW,
                    Text(
                      package.packageName ?? "Package HeadLine",
                      style: const TextStyle(
                          color: colorred,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                    const Spacer(),
                    const PackageRatingAndReviewCountWidget(
                        review: '0.0', reviewCount: '0'),
                    sboxW5,
                    const Icon(
                      Icons.favorite_border_outlined,
                      color: colorred,
                    ),
                  ],
                ),
              ),
              Container(
                width: 90.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12), color: colorwhite),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            sbox,
                            Padding(
                              padding: const EdgeInsets.all(padding),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 53.w,
                                        child: HtmlWidget(
                                          package.packageDescription ?? '',
                                          textStyle: const TextStyle(
                                              overflow: TextOverflow.clip,
                                              fontSize: 14,
                                              color: colorblack,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      )
                                    ],
                                  ),
                                  sbox20,
                                ],
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        Stack(children: [
                          Padding(
                              padding: const EdgeInsets.all(padding),
                              child: CustomImage(
                                imageUrl: package.packageCoverImage ?? '',
                                borderRadius: BorderRadius.circular(12),
                                fit: BoxFit.cover,
                                height: 10.h,
                                width: 10.h,
                              )),
                          Positioned(
                            top: 75,
                            right: 15,
                            left: 15,
                            bottom: 5,
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
                                  borderRadius: BorderRadius.circular(12),
                                  color: colorwhite),
                              child: Center(
                                child: Text(
                                  isGeuestUser
                                      ? '₹ book'
                                      : '₹ ${package.packageCost.toString()}',
                                  style: const TextStyle(color: colorred),
                                ),
                              ),
                            ),
                          ),
                        ])
                      ],
                    ),
                    // const Center(
                    //   child: Text(
                    //     '₹ Book',
                    //     style: TextStyle(color: colorred),
                    //   ),
                    // ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
