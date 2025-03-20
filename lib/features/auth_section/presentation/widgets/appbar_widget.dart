import 'package:flutter/material.dart';
import 'package:flutter_consumer_app/core/colors/colors.dart';
import 'package:flutter_consumer_app/core/constant/constant.dart';

///main appbar that can be used across the app
///Contains back button and trailing icons

class AppBarWidget extends StatelessWidget {
  final Icon? icons;
  final bool? leadingIcon;
  const AppBarWidget({super.key, this.icons, this.leadingIcon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: padding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              (Icons.arrow_circle_left_outlined),
              color: colorblack,
            ),
          ),
        ],
      ),
    );
  }
}
