import 'package:flutter/material.dart';
import 'package:flutter_consumer_app/core/colors/colors.dart';
import 'package:sizer/sizer.dart';

class ChatOptionTIleWidget extends StatelessWidget {
  const ChatOptionTIleWidget({
    super.key,
    this.icon,
    required this.title,
    // this.crossAxisAlignment = CrossAxisAlignment.center,
  });
  final IconData? icon;
  final String title;
  // final CrossAxisAlignment? crossAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Container(
        height: 6.h,
        width: 85.w,
        decoration: BoxDecoration(
          color: colorwhite,
          borderRadius: BorderRadius.circular(35),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Icon(icon, color: colorred),
            ),
            Text(
              title,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ),
    );
  }
}
