import 'package:flutter/material.dart';
import 'package:flutter_consumer_app/features/partner_profile/domain/entities/partner_profile_entity.dart';
import 'package:flutter_consumer_app/shared/widgets/cached_image.dart';

class LatestTabWidget extends StatelessWidget {
  const LatestTabWidget({super.key, required this.gallery});
  final List<Gallery> gallery;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.zero,
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, mainAxisSpacing: 0),
      itemCount: gallery.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 8, right: 8),
            child: CustomImage(
              imageUrl: gallery[index].media![0].mediaType ?? "",
              borderRadius: BorderRadius.circular(10),
            ));
      },
    );
  }
}
