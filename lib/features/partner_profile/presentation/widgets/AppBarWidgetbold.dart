import 'package:flutter/material.dart';
import 'package:flutter_consumer_app/core/colors/colors.dart';
import 'package:flutter_consumer_app/core/constant/constant.dart';

//main appbar that can be used across the app

class AppBarWidgetPrimarybold extends StatelessWidget {
  final Icon? icons;
  final bool? leadingIcon;
  final String text;
  final Color? textColor;
  const AppBarWidgetPrimarybold({
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
              style: const TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w700,
                height: 1.05,
              ),
            ),
          )
        ],
      ),
    );
  }
}
