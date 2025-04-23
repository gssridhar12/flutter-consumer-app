import 'package:flutter/material.dart';
import 'package:flutter_consumer_app/core/colors/colors.dart';
import 'package:flutter_consumer_app/core/constant/constant.dart';

class SearchPageHeadingwidget extends StatelessWidget {
  const SearchPageHeadingwidget({
    super.key,
    required this.title,
    required this.icon,
  });
  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Icon(
          icon,
          size: 22,
          color: colorblack.withOpacity(0.7),
        ),
        sboxW5,
        Text(
          title,
          style: TextStyle(
            fontSize: 20,
            color: colorblack.withOpacity(0.7),
          ),
        ),
      ],
    );
  }
}
