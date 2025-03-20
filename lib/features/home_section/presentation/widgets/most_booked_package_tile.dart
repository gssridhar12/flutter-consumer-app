import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_consumer_app/core/colors/colors.dart';
import 'package:flutter_consumer_app/core/constant/constant.dart';
import 'package:flutter_consumer_app/features/home_section/domain/entities/response/package_enitity.dart';
import 'package:flutter_consumer_app/shared/widgets/cached_image.dart';
import 'package:flutter_consumer_app/shared/widgets/custom_container_widget.dart';

class MostBookedPackageCardWidget extends StatelessWidget {
  const MostBookedPackageCardWidget({
    super.key,
    required this.width,
    required this.entity,
    required this.index,
  });

  final double width;
  final int index;
  final PackageEntity entity;

  @override
  Widget build(BuildContext context) {
    final package = entity.data!.packages![index];

    return CustomContainerWidget(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(children: [
          AspectRatio(
            aspectRatio: 8 / 5,
            child: Swiper(
              viewportFraction: 1,
              scale: 0.8,
              itemCount: package.package!.packageGallery!.length,
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
                  height: width * 0.4,
                  width: width,
                  child: CustomImage(
                    imageUrl: package.package!.packageGallery![index].media!,
                    borderRadius: BorderRadius.circular(12),
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
                  ))),
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
                  ))),
        ]),
        sbox,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
          child: Text(
            package.package!.packageHeadline!,
            style: const TextStyle(
                overflow: TextOverflow.clip, color: colorblack, fontSize: 18),
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
                    '₹${package.package!.packageCost}',
                    style: const TextStyle(color: colorblack, fontSize: 18),
                  ),
                ],
              ),
            ),
            PackageRatingAndBookingsCountWidget(
                rating: package.packageReviewAverage != null
                    ? double.parse(
                            package.packageReviewAverage!.toStringAsFixed(1))
                        .toString()
                    : 'Not Rated')
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
          child: Row(
            children: [
              SizedBox(
                  width: 40,
                  height: 40,
                  child: CustomImage(
                    imageUrl: package.profileImage ?? '',
                    borderRadius: BorderRadius.circular(30),
                  )),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      package.package!.serviceLocation!,
                      style: TextStyle(
                          color: colorblack.withOpacity(0.7), fontSize: 14),
                    ),
                    sbox5,
                    Text(
                      '₹${package.package!.packageCost}',
                      style: const TextStyle(color: colorblack, fontSize: 16),
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
                ),
              )
            ],
          ),
        ),
      ],
    ));
  }
}

class PackageRatingAndGigsCountWidget extends StatelessWidget {
  const PackageRatingAndGigsCountWidget({
    super.key,
    this.rating = "0",
    this.count,
  });
  final String rating;
  final String? count;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(
              Icons.star,
              size: 15,
              color: colorred,
            ),
            Text(
              rating,
              style: const TextStyle(
                  fontSize: 12, color: colorred, fontWeight: FontWeight.w600),
            ),
            Text(
              '($count gigs)',
              style: TextStyle(
                  fontSize: 12,
                  color: colorblack.withOpacity(0.5),
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}

class PackageRatingAndBookingsCountWidget extends StatelessWidget {
  const PackageRatingAndBookingsCountWidget({
    super.key,
    this.rating = "0",
    this.count,
  });
  final String rating;
  final String? count;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(
              Icons.star,
              size: 15,
              color: colorred,
            ),
            Text(
              rating,
              style: const TextStyle(
                  fontSize: 12, color: colorred, fontWeight: FontWeight.w600),
            ),
            Text(
              '($count bookings)',
              style: TextStyle(
                  fontSize: 12,
                  color: colorblack.withOpacity(0.5),
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}

class PackageRatingAndOrderCountWidget extends StatelessWidget {
  const PackageRatingAndOrderCountWidget({
    this.review = "",
    this.reviewCount,
    super.key,
  });
  final String? review;
  final String? reviewCount;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 10),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(
            Icons.star,
            size: 18,
            color: colorred,
          ),
          Text(
            review!,
            style: const TextStyle(
                fontSize: 16, color: colorred, fontWeight: FontWeight.w600),
          ),
          Text(
            '($reviewCount)',
            style: TextStyle(
                fontSize: 16,
                color: colorblack.withOpacity(0.5),
                fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}

class PackageRatingAndReviewCountWidget extends StatelessWidget {
  const PackageRatingAndReviewCountWidget({
    super.key,
    this.fontSize,
    this.iconSize,
    this.color,
    this.review = "",
    this.reviewCount = "",
  });
  final double? fontSize;
  final double? iconSize;
  final Color? color;
  final String? review;
  final String? reviewCount;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 10),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.star,
            size: iconSize == null ? 18 : iconSize as double,
            color: colorred,
          ),
          Text(
            review!,
            style: TextStyle(
                fontSize: fontSize == null ? 18 : fontSize as double,
                color: color ?? colorred,
                fontWeight: FontWeight.w500),
          ),
          Text(
            '($reviewCount reviews)',
            style: TextStyle(
                fontSize: fontSize == null ? 18 : fontSize as double,
                color: color ?? colorblack.withOpacity(0.5),
                fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}
