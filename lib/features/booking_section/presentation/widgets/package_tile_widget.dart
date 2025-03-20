import 'package:flutter/material.dart';
import 'package:flutter_consumer_app/core/colors/colors.dart';
import 'package:flutter_consumer_app/core/constant/constant.dart';
import 'package:flutter_consumer_app/features/packages_section/domain/entities/package_details_entitiy.dart';
import 'package:flutter_consumer_app/shared/widgets/cached_image.dart';

class PackageTileWidget extends StatelessWidget {
  ///This Widget is used by both booking page and booking confirmation page

  const PackageTileWidget({
    super.key,
    required this.package,
  });
  final PackageDetailsEntity package;
  @override
  Widget build(BuildContext context) {
    final data = package.data;
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
                      imageUrl: data!.packageDetails!.packageCoverImage ?? "",
                      borderRadius: BorderRadius.circular(12)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    sbox20,
                    Text(
                      data.packageDetails!.packageName ?? "",
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
                        data.reviewAverages!.overallAverage != null
                            ? Text(
                                data.reviewAverages!.overallAverage!
                                    .toStringAsFixed(1),
                                style: const TextStyle(
                                    fontSize: 14,
                                    color: colorred,
                                    fontWeight: FontWeight.w500),
                              )
                            : const Text('Not Available'),
                        Text(
                          '(201 bookings)',
                          style: TextStyle(
                              fontSize: 14,
                              color: colorblack.withOpacity(0.5),
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    sbox,
                    Text(
                      data.partnerName ?? "",
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
