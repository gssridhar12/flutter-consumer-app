import 'package:flutter/material.dart';
import 'package:flutter_consumer_app/core/colors/colors.dart';

class SearchPageChipWidget extends StatelessWidget {
  const SearchPageChipWidget({
    super.key,
    required this.width,
    required this.text,
    this.onTap,
  });

  final double width;
  final String text;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap!(),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 3.0,
        ),
        child: Container(
          // width: 50,
          height: 35,
          decoration: BoxDecoration(
              border: Border.all(
                color: colorred.withOpacity(0.2),
              ),
              borderRadius: BorderRadius.circular(20),
              color: colorwhite),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                text,
                style: const TextStyle(color: colorblack, fontSize: 16),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
