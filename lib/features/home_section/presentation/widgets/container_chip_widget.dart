import 'package:flutter/material.dart';
import 'package:flutter_consumer_app/core/colors/colors.dart';
import 'package:sizer/sizer.dart';

class ContainerChipWidget extends StatelessWidget {
  const ContainerChipWidget({
    super.key,
    required this.text,
  });

  // final double width;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 3.5.h,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  blurRadius: 5,
                  spreadRadius: 1,
                  color: colorblack.withOpacity(0.1))
            ],
            borderRadius: BorderRadius.circular(20),
            color: colorred.withOpacity(0.3)),
        child: FittedBox(
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text(
              text,
              style: const TextStyle(color: colorwhite, fontSize: 12),
            ),
          ),
        ),
      ),
    );
  }
}
