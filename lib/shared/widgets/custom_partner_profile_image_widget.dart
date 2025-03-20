import 'package:flutter/material.dart';
import 'package:flutter_consumer_app/shared/widgets/cached_image.dart';

class CustomPartnerProfileImageWidget extends StatelessWidget {
  const CustomPartnerProfileImageWidget({
    super.key,
    required this.image,
    required this.color,
    this.width,
    this.height,
  });
  final String image;
  final Color color;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 70,
      width: width ?? 70,
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(color: color, shape: BoxShape.circle),
      child: ClipOval(
        child: SizedBox.fromSize(
          size: const Size.fromRadius(48),
          child: CustomImage(
            imageUrl: image,
          ),
        ),
      ),
    );
  }
}
