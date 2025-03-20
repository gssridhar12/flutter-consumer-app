import 'package:flutter/material.dart';
import 'package:flutter_consumer_app/core/colors/colors.dart';
import 'package:flutter_consumer_app/core/constant/constant.dart';
import 'package:flutter_consumer_app/features/packages_section/domain/entities/package_details_entitiy.dart';
import 'package:flutter_consumer_app/shared/widgets/cached_image.dart';

class PackageTabWidget extends StatelessWidget {
  ///This Widget is used by both booking page and booking confirmation page

  const PackageTabWidget({
    super.key,
    required this.package,
  });
  final Data package;
  @override
  Widget build(BuildContext context) {
    final data = package;
    final width = MediaQuery.of(context).size.width;

    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), color: colorwhite),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 5, vertical: padding),
                child: SizedBox(
                    height: width * 0.22,
                    width: width * 0.22,
                    child: CustomImage(
                      imageUrl: package.packageDetails!.packageCoverImage??"",
                      borderRadius: BorderRadius.circular(12),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    sbox20,
                    Text(
                      data.packageDetails!.packageName??"",
                      style: const TextStyle(fontSize: 16),
                    ),
                    sbox,
                    Row(
                      children: [
                        const Icon(
                          Icons.star,
                          size: 16,
                          color: colorred,
                        ),
                        Text(
                          package.reviewAverages!.overallAverage.toString(),
                          style: const TextStyle(
                              fontSize: 14,
                              color: colorred,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          '(201 bookings)',
                          style: TextStyle(
                              fontSize: 14,
                              color: colorblack.withOpacity(0.5),
                              fontWeight: FontWeight.w100),
                        ),
                      ],
                    ),
                    sbox,
                    Text(
                      package.partnerName??"",
                      style: const TextStyle(fontSize: 16),
                    ),
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
