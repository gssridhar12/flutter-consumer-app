import 'package:flutter/material.dart';
import 'package:flutter_consumer_app/core/colors/colors.dart';
import 'package:flutter_consumer_app/core/constant/constant.dart';

class BookingConfirmationTileWidget extends StatelessWidget {
  const BookingConfirmationTileWidget({
    super.key,
    required this.width,
    required this.boldText,
    required this.text,
    required this.icon,
  });

  final double width;
  final String boldText;
  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Icon(icon, size: 20),
          sboxW5,
          sboxW5,
          Text('$boldText -',
              style:
                  const TextStyle(fontWeight: FontWeight.w600, fontSize: 16)),
          sboxW5,
          sboxW5,
          Expanded(
            child: Text(text,
                style: TextStyle(
                    overflow: TextOverflow.ellipsis,
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: colorblack.withOpacity(0.7))),
          ),
        ],
      ),
    );
  }
}
