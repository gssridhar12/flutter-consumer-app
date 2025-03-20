import 'package:flutter/material.dart';
import 'package:flutter_consumer_app/core/colors/colors.dart';
import 'package:flutter_consumer_app/core/constant/constant.dart';

class AppBarWidgetSecondary extends StatelessWidget {
  final Icon? icons;
  final Widget? trailingIcon;
  final bool? leadingIcon;
  final String text;
  final Color? textcolor;
  final Color? iconColor;
  final Color? backgroundColor;
  final double? fontSize;

  final void Function()? trailingButtonOnTap;

  const AppBarWidgetSecondary({
    super.key,
    this.icons,
    this.leadingIcon,
    required this.text,
    this.textcolor,
    this.fontSize,
    this.trailingIcon,
    this.trailingButtonOnTap,
    this.backgroundColor,
    this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: padding),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                (Icons.arrow_back_ios_outlined),
                color: iconColor ?? colorblack,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5.0),
              child: Text(
                text,
                style: TextStyle(
                  fontSize: fontSize ?? 15,
                  color: textcolor ?? colorblack.withOpacity(0.5),
                ),
              ),
            ),
            const Spacer(),
            trailingIcon != null
                ? IconButton(
                    onPressed: () {
                      trailingButtonOnTap!();
                    },
                    icon: trailingIcon!)
                : const SizedBox.shrink()
          ],
        ),
      ),
    );
  }
}
