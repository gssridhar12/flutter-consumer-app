import 'package:flutter/material.dart';
import 'package:flutter_consumer_app/core/constant/constant.dart';

class BottomSheetIconandTitleWidget extends StatelessWidget {
  const BottomSheetIconandTitleWidget({
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
        Icon(icon, size: 22),
        sboxW5,
        Text(title, style: const TextStyle(fontSize: 18,fontWeight: FontWeight.w600),overflow: TextOverflow.ellipsis, // Handle text overflow
            maxLines: 1,),
      ],
    );
  }
}
