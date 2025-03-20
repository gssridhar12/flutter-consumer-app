import 'package:flutter/material.dart';
import 'package:flutter_consumer_app/core/colors/colors.dart';
import 'package:flutter_consumer_app/core/constant/constant.dart';

class HappyCustomerLeftImageWidget extends StatelessWidget {
  const HappyCustomerLeftImageWidget({
    super.key,
    required this.width,
    required this.image,
    required this.title,
    required this.subtitle,
  });

  final double width;
  final String image;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: width * 0.5,
          height: width * 0.5,
          decoration: const BoxDecoration(color: colorwhite),
          child: Image.asset(image, fit: BoxFit.cover),
        ),
        Container(
          width: width * 0.5,
          height: width * 0.5,
          decoration: const BoxDecoration(color: colorwhite),
          child: Padding(
            padding: const EdgeInsets.all(padding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                sbox20,
                sbox20,
                Text(title,
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                        color: colorblack,
                        fontSize: 16,
                        fontWeight: FontWeight.w500)),
                const Spacer(),
                Text(subtitle,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: colorblack.withOpacity(0.7),
                        fontSize: 14,
                        fontWeight: FontWeight.w500)),
                sbox20,
              ],
            ),
          ),
        ),
      ],
    );
  }
}
