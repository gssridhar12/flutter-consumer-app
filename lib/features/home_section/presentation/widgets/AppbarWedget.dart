import 'package:flutter/material.dart';
import 'package:flutter_consumer_app/core/colors/colors.dart';
import 'package:flutter_consumer_app/core/constant/constant.dart';

class AppBarWidgetPrimary extends StatelessWidget {
  final Icon? icons;
  final bool? leadingIcon;
  final String text;
  final Color? textColor;
  const AppBarWidgetPrimary({
    super.key,
    this.icons,
    this.leadingIcon,
    required this.text,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: padding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              (Icons.arrow_back_ios_new_outlined),
              color: colorblack,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Text(
              text,
              style: TextStyle(
                color: Colors.black.withOpacity(0.5),
                fontSize: 14,
                fontWeight: FontWeight.w400,
                height: 1.14,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
