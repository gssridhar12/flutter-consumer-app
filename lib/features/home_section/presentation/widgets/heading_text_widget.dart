import 'package:flutter/material.dart';
import 'package:flutter_consumer_app/core/colors/colors.dart';
import 'package:flutter_consumer_app/core/icons/app_icons_icons.dart';

class HeadingTextWidget extends StatelessWidget {
  const HeadingTextWidget({
    super.key,
    required this.text,
    this.trailingButton = true,
    this.textColor,
    this.size,
    this.trailingWidget,
    this.onTap,
    this.fontWeight,
  });

  final String text;
  final bool? trailingButton;
  final Color? textColor;
  final double? size;
  final Widget? trailingWidget;
  final void Function()? onTap;
  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        children: [
          Expanded(
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                text,
                style: TextStyle(
                  fontSize: size ?? 22,
                  color: textColor ?? colorblack,
                  fontWeight: fontWeight ?? FontWeight.w600,
                ),
              ),
            ),
          ),
          if (trailingButton ?? true)
            GestureDetector(
              onTap: () {
                if (trailingWidget != null) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => trailingWidget!,
                    ),
                  );
                }
                if (onTap != null) {
                  onTap!();
                }
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'See all',
                    maxLines: 1,
                    style: TextStyle(
                      fontSize: 12,
                      color: colorblack.withOpacity(0.7),
                    ),
                  ),
                  Icon(
                    AppIcons.navigate_next,
                    size: 27,
                    color: colorblack.withOpacity(0.7),
                  ),
                ],
              ),
            )
          else
            const SizedBox(height: 50),
        ],
      ),
    );
  }
}
