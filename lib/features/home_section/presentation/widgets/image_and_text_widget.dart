import 'package:flutter/material.dart';
import 'package:flutter_consumer_app/core/colors/colors.dart';

class CustomImageAndTextWidget extends StatelessWidget {
  const CustomImageAndTextWidget({
    super.key,
    required this.width,
    required this.image,
    required this.text,
  });

  final double width;
  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width * 0.32,
      height: width * 0.075,
      decoration: BoxDecoration(
        color: const Color.fromARGB(102, 45, 44, 44),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          SizedBox(
            width: 30,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  image,
                  fit: BoxFit.fill,
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Text(
              text,
              style: TextStyle(color: colorwhite.withOpacity(0.7)),
            ),
          ),
        ],
      ),
    );
  }
}
