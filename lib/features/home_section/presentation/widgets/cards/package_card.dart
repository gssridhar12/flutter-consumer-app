import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_consumer_app/core/colors/colors.dart';
import 'package:flutter_consumer_app/core/constant/constant.dart';
import 'package:flutter_consumer_app/features/home_section/domain/entities/response/get_package_like_entity.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/widgets/like_button.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/widgets/most_booked_package_tile.dart';
import 'package:flutter_consumer_app/main.dart';
import 'package:flutter_consumer_app/shared/widgets/cached_image.dart';
import 'package:flutter_consumer_app/shared/widgets/custom_container_widget.dart';

class PackageCard extends StatefulWidget {
  const PackageCard({
    super.key,
    required this.width,
    required this.index,
    required this.isLiked,
    required this.packages,
  });

  final double width;
  final bool isLiked;
  final int index;

  final LikedPackage packages;

  @override
  State<PackageCard> createState() => _PackageCardState();
}

class _PackageCardState extends State<PackageCard> {
  bool isFavourite = false;
  int index = 0;
  final String userId = localDb.getString('id')!;

  @override
  Widget build(BuildContext context) {
    return CustomContainerWidget(
        borderRadius: 20,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                AspectRatio(
                  aspectRatio: 8 / 5,
                  child: Swiper(
                    viewportFraction: 1,
                    scale: 0.8,
                    itemCount: widget.packages.package!.packageGallery!.length,
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
                              imageUrl: widget.packages.package
                                      ?.packageGallery?[index].media ??
                                  ""),
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
                        borderRadius:
                            BorderRadius.only(topLeft: Radius.circular(20))),
                    width: widget.width * 0.08,
                    child: Image.asset('assets/images/preferedpartnericon.png'),
                  ),
                ),
                Positioned(
                  right: 60,
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
                        size: 22,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  right: 15,
                  top: 10,
                  child: Container(
                    decoration: BoxDecoration(
                        color: colorwhite.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(25)),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: LikeButton(
                        packageUuid: widget.packages.package!.packageUuid!,
                        userId: userId,
                        widgetType: WidgetType.homescreen,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            sbox,
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
              child: Text(
                widget.packages.package!.packageName ?? "",
                style: const TextStyle(
                    overflow: TextOverflow.clip,
                    color: colorblack,
                    fontSize: 22),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '₹${widget.packages.package!.packageCost ?? ""}',
                        style: const TextStyle(color: colorblack, fontSize: 18),
                      ),
                    ],
                  ),
                ),
                const PackageRatingAndBookingsCountWidget(),
              ],
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
              child: Row(
                children: [
                  SizedBox(
                      width: 40,
                      height: 40,
                      child: CustomImage(
                          borderRadius: BorderRadius.circular(40),
                          imageUrl:
                              widget.packages.package!.packageCoverImage ??
                                  "")),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.packages.package!.serviceLocation ?? "",
                          style: TextStyle(
                              color: colorblack.withOpacity(0.7), fontSize: 14),
                        ),
                        sbox5,
                        Text(
                          '₹${widget.packages.package!.packageCost ?? ""}',
                          style:
                              const TextStyle(color: colorblack, fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  OutlinedButton.icon(
                      style: const ButtonStyle(
                          iconColor: WidgetStatePropertyAll(colorred)),
                      onPressed: () {},
                      icon: const Icon(Icons.chat),
                      label: const Text(
                        'Chat',
                        style: TextStyle(color: colorred),
                      ))
                ],
              ),
            ),
          ],
        ));
  }
}
