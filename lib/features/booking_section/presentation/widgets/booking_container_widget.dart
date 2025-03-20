import 'package:flutter/material.dart';
import 'package:flutter_consumer_app/core/colors/colors.dart';

class BookingContainerWidget extends StatelessWidget {
  const BookingContainerWidget({
    super.key,
    required this.child,
    this.height,
    this.borderRadius,
    this.isTopCurved,
    this.isBorder,
  });
  final Widget child;
  final double? height;
  final double? borderRadius;
  final bool? isTopCurved;
  final bool? isBorder;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 2),
        child: isBorder == true
            ? Container(
                width: width,
                height: height != null ? width * height! : null,
                decoration: isTopCurved == true
                    ? const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            topRight: Radius.circular(12)),
                        color: colorwhite)
                    : const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(12),
                            bottomRight: Radius.circular(12)),
                        color: colorwhite),
                child: child)
            : Container(
                width: width,
                height: height != null ? width * height! : null,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.zero, color: colorwhite),
                child: child));
  }
}
