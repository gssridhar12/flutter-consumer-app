import 'package:flutter/material.dart';
import 'package:flutter_consumer_app/core/colors/colors.dart';
import 'package:flutter_consumer_app/core/constant/constant.dart';

class IconAndTextWidget extends StatelessWidget {
  const IconAndTextWidget({
    super.key,
    required this.text,
    required this.icon,
    this.color,
    this.isUnderline,
    this.onTap,
  });
  final String text;
  final IconData icon;
  final Color? color;
  final bool? isUnderline;
  final void Function()? onTap;
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!();
      },
      child: CustomContainerwidget1(
        height: 0.13,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: padding),
              child: Icon(
                icon,
                color: color != null ? colorred : null,
              ),
            ),
            Text(
              text,
              style: TextStyle(
                  color: color != null ? colorred : null,
                  decoration:
                      isUnderline == true ? TextDecoration.underline : null,
                  fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomContainerwidget1 extends StatelessWidget {
  const CustomContainerwidget1({
    super.key,
    required this.child,
    this.height,
    this.borderRadius,
  });
  final Widget child;
  final double? height;
  final double? borderRadius;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 5),
      child: Container(
          width: width,
          height: height != null ? width * height! : null,
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  blurRadius: 5,
                  spreadRadius: 1,
                  color: colorblack.withOpacity(0.1),
                ),
              ],
              borderRadius: BorderRadius.circular(borderRadius ?? 8),
              color: colorwhite),
          child: child),
    );
  }
}
