import 'package:flutter/material.dart';
import 'package:flutter_consumer_app/core/constant/constant.dart';

class BulletedTextWidget extends StatelessWidget {
  const BulletedTextWidget({
    super.key,
    required this.width,
    this.boldText,
    required this.text,
    this.fontSize = 16,
  });

  final double width;
  final String? boldText;
  final String text;
  final int fontSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          bullet,
          style: const TextStyle(fontSize: 22),
        ),
        Expanded(
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: boldText != null ? '$boldText : ' : '',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: fontSize.toDouble()),
                ),
                TextSpan(
                    text: text,
                    style: TextStyle(
                        fontSize: fontSize.toDouble(),
                        overflow: TextOverflow.clip)),
              ],
            ),
          ),
        )
      ],
    );
  }
}
