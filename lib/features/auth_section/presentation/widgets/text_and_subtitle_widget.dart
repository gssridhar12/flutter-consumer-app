import 'package:flutter/material.dart';
import 'package:flutter_consumer_app/core/colors/colors.dart';
import 'package:flutter_consumer_app/core/constant/constant.dart';


class TitleAndSubtitleWidget extends StatelessWidget {
  const TitleAndSubtitleWidget({
    super.key,
    required this.titile,
    required this.subtitle,
  });
  final String titile;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: padding,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            titile,
            style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
          ),
          sbox,
          Text(
            subtitle,
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w300,
                color: colorblack.withOpacity(0.5)),
          ),
          sbox20,
        ],
      ),
    );
  }
}
