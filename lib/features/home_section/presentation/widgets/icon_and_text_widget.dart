import 'package:flutter/material.dart';
import 'package:flutter_consumer_app/core/colors/colors.dart';
import 'package:flutter_consumer_app/core/constant/constant.dart';
import 'package:flutter_consumer_app/shared/widgets/custom_container_widget.dart';

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
      child: CustomContainerWidget(
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
