import 'package:flutter/material.dart';
import 'package:flutter_consumer_app/core/colors/colors.dart';
import 'package:flutter_consumer_app/core/constant/constant.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/widgets/heading_text_widget.dart';
import 'package:flutter_consumer_app/features/partner_profile/domain/entities/partner_profile_entity.dart';
import 'package:flutter_consumer_app/shared/widgets/rating_card_widget.dart';

class ReviewsTabWidget extends StatelessWidget {
  const ReviewsTabWidget(
      {super.key, required this.reviews, required this.reviewAverages});
  final List<ProfileReview> reviews;
  final ReviewAverages reviewAverages;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return CustomScrollView(physics: const BouncingScrollPhysics(), slivers: [
      SliverToBoxAdapter(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              sbox20,
              HeadingTextWidget(text: '${reviews.length} Reviews'),
              sbox20,
              SizedBox(
                height: height * 0.26,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.zero,
                  physics: const BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: reviews.length,
                  itemBuilder: (BuildContext context, int index) {
                    return RatingCardWidget(
                      width: width,
                      packageData: reviews[index],
                    );
                  },
                ),
              ),

              const Divider(
                color: colorred,
                thickness: 1,
              ),
              sbox20,

              const Divider(),
              sbox20,
              Row(
                children: [
                  const Text(
                    'Partner communication',
                    style: TextStyle(fontSize: 18),
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.star_border_outlined,
                    color: colorred,
                  ),
                  Text(
                    reviewAverages.avgCommunication.toString(),
                    style: const TextStyle(fontSize: 18),
                  )
                ],
              ),
              const Divider(),
              sbox20,
              Row(
                children: [
                  const Text(
                    'Service as described',
                    style: TextStyle(fontSize: 18),
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.star_border_outlined,
                    color: colorred,
                  ),
                  Text(
                    reviewAverages.avgServiceDescribed.toString(),
                    style: const TextStyle(fontSize: 18),
                  )
                ],
              ),
              const Divider(),

              sbox20,

              Row(
                children: [
                  const Text(
                    'Would Recommend',
                    style: TextStyle(fontSize: 18),
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.star_border_outlined,
                    color: colorred,
                  ),
                  Text(
                    reviewAverages.avgRecommended.toString(),
                    style: const TextStyle(fontSize: 18),
                  )
                ],
              ),
              const Divider(),

              sbox20,
              const Divider(
                color: colorred,
                thickness: 1,
              ),
              // sbox20,
            ],
          ),
        ),
      ),
    ]);
  }
}
// RatingBar.builder(
//   initialRating: 3,
//   minRating: 1,
//   direction: Axis.horizontal,
//   allowHalfRating: true,
//   itemCount: 5,
//   itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
//   itemBuilder: (context, _) => const Icon(
//     Icons.star,
//     color: colorred,
//   ),
//   onRatingUpdate: (rating) {
//     print(rating);
//   },
// ),
