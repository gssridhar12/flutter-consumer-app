import 'package:flutter/material.dart';
import 'package:flutter_consumer_app/core/colors/colors.dart';
import 'package:flutter_consumer_app/core/constant/constant.dart';
import 'package:flutter_consumer_app/shared/widgets/custom_container_widget.dart';

class BookingConfirmationPageTile extends StatelessWidget {
  const BookingConfirmationPageTile({
    super.key,
    required this.title,
    required this.icon,
    required this.bottomWidget,
    this.trailingText,
  });
  final String title;
  final IconData? icon;
  final Widget bottomWidget;
  final String? trailingText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(padding),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              icon != null
                  ? Icon(icon, size: 18, color: colorred)
                  : Container(),
              sboxW5,
              Padding(
                padding: const EdgeInsets.only(top: 4.0),
                child: Text(
                  title,
                  style: const TextStyle(fontSize: 16, color: colorred),
                ),
              ),
              const Spacer(),
              trailingText != null
                  ? Text(
                      trailingText!,
                      style: TextStyle(
                          fontSize: 14,
                          color: colorblack.withOpacity(0.7),
                          decoration: TextDecoration.underline),
                    )
                  : Container()
            ],
          ),
          sbox5,
          CustomContainerWidget(
            onTap: () {
              
            },
              child: Padding(
            padding: const EdgeInsets.all(padding),
            child: bottomWidget,
          ))
        ],
      ),
    );
  }
}
