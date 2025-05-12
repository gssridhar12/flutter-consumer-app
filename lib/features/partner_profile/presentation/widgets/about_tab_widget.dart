import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_consumer_app/core/colors/colors.dart';
import 'package:flutter_consumer_app/core/constant/constant.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/widgets/heading_text_widget.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/widgets/most_booked_package_tile.dart';
import 'package:flutter_consumer_app/features/partner_profile/domain/entities/partner_profile_entity.dart';
import 'package:flutter_consumer_app/features/partner_profile/presentation/widgets/MegmoSeeAll.dart';
import 'package:flutter_consumer_app/features/partner_profile/presentation/widgets/Portfolio_seeAll.dart';

import 'package:flutter_consumer_app/shared/widgets/cached_image.dart';
import 'package:readmore/readmore.dart';

class AboutTabWidget extends StatelessWidget {
  const AboutTabWidget(
      {super.key, required this.portfolio, required this.about});

  final List<Portfolio> portfolio;
  final String about;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    List<BorderRadius> border = [
      const BorderRadius.only(topLeft: Radius.circular(10)),
      const BorderRadius.only(topRight: Radius.circular(10)),
      const BorderRadius.only(bottomLeft: Radius.circular(10)),
      const BorderRadius.only(bottomRight: Radius.circular(10))
    ];
    return CustomScrollView(physics: const BouncingScrollPhysics(), slivers: [
      SliverToBoxAdapter(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              sbox20,
              const HeadingTextWidget(
                text: 'Partner Information',
                trailingButton: false,
                size: 20,
              ),
              sbox20,
              ReadMoreText(
                style: const TextStyle(fontSize: 16),
                about,
                trimLines: 5,
                colorClickableText: Colors.pink,
                trimMode: TrimMode.Line,
                trimCollapsedText: 'Show more',
                trimExpandedText: 'Show less',
                moreStyle:
                    const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              sbox20,
              const HeadingTextWidget(
                  text: 'My Portfolio',
                  trailingButton: true,
                  trailingWidget: MyHomePagetile()),
              sbox20,
              GridView.builder(
                padding: EdgeInsets.zero,
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing: 10,
                    childAspectRatio: 1 / 1,
                    crossAxisCount: 2,
                    mainAxisSpacing: 0),
                itemCount: portfolio.length,
                itemBuilder: (BuildContext context, int index) {
                  return Stack(children: [
                    CustomImage(
                      imageUrl: portfolio[index].projectCover ?? "",
                      borderRadius: border[index],
                      fit: BoxFit.cover,
                    ),
                    Positioned(
                        left: 0,
                        right: 0,
                        bottom: 12,
                        child: ClipRRect(
                          borderRadius: index != 1 && index != 0
                              ? border[index]
                              : BorderRadius.zero,
                          child: BackdropFilter(
                            blendMode: BlendMode.srcIn,
                            filter:
                                ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                            child: Container(
                              width: width,
                              height: 30,
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade200.withOpacity(0.2)),
                              child: Center(
                                child: Text(
                                  portfolio[index].projectHeadline ?? "",
                                ),
                              ),
                            ),
                          ),
                        )),
                  ]);
                },
              ),
              sbox20,
              const HeadingTextWidget(
                text: 'My Woofurs Gigs',
                trailingWidget: MyMegmoSeeAllPagetile(),
              ),
              sbox20,
              SizedBox(
                height: width * 0.7,
                width: width,
                child: ListView.builder(
                  // physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: 4,
                  itemBuilder: (BuildContext context, int index) {
                    return Stack(children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: SizedBox(
                            height: width * 0.8,
                            width: width * 0.4,
                            child: Image.asset(
                              'assets/images/becomepartber23(3).png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                          left: 0,
                          right: 8,
                          bottom: 0,
                          child: ClipRRect(
                            borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10)),
                            child: BackdropFilter(
                              blendMode: BlendMode.srcIn,
                              filter:
                                  ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                              child: Container(
                                width: width,
                                height: 90,
                                decoration: BoxDecoration(
                                    color:
                                        Colors.grey.shade200.withOpacity(0.2)),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'Nancy King',
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500,
                                            color: colorwhite),
                                      ),
                                      sbox5,
                                      const Text(
                                        'Hair & Makeup Artist',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w100,
                                            color: colorwhite),
                                      ),
                                      const PackageRatingAndReviewCountWidget(
                                        fontSize: 15,
                                        color: colorwhite,
                                        iconSize: 17,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          )),
                    ]);
                  },
                ),
              ),
              sbox20,
              const Divider(
                color: colorred,
              ),
              sbox20,
            ],
          ),
        ),
      ),
    ]);
  }
}
