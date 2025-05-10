import 'package:flutter/material.dart';
import 'package:flutter_consumer_app/core/colors/colors.dart';
import 'package:flutter_consumer_app/core/constant/constant.dart';
import 'package:flutter_consumer_app/shared/widgets/cached_image.dart';
// import 'package:flutter_consumer_app/features/packages_section/domain/entities/package_review_entity.dart';
// import 'package:flutter_consumer_app/features/packages_section/domain/entities/partner_review_entity.dart';

class RatingCardWidget extends StatelessWidget {
  const RatingCardWidget({
    super.key,
    required this.width,
    this.packageData,
  });

  final double width;
  // final ProfileReview? packageData;
  final dynamic packageData;

  // final time = packageData!.reviewDetails.createdOn.subtract(Duration(days: 7));

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 8.0,
        bottom: 8,
      ),
      child: Container(
        // height: width * 0.15,
        width: width * 0.8,
        decoration: const BoxDecoration(
            color: colorwhite,
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: CustomImage(
                  height: 40,
                  width: 40,
                  imageUrl: packageData!.profileImage,
                  borderRadius: BorderRadius.circular(30)),
              title: Text(packageData!.fullName),
               subtitle: Text(packageData.city),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(packageData!.reviewDetails.review),
            ),
            const Spacer(),
            sbox,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  const Icon(
                    Icons.star,
                    color: colorred,
                  ),
                  Text(packageData!.reviewDetails.communication.toString()),
                  const Spacer(),
                  const Text(
                     //  '${packageData!.reviewDetails.createdOn.subtract(const Duration(days: 7))} week ago')
                     '1 week ago'
                     )
                ],
              ),
            ),
            sbox
          ],
        ),
      ),
    );
  }
}
