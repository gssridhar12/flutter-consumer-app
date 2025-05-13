import 'package:flutter/material.dart';
import 'package:flutter_consumer_app/core/colors/colors.dart';
// ignore: unused_import
import 'package:flutter_svg/flutter_svg.dart';

class CustomChip extends StatelessWidget {
  final String label;
  final Color? color;
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? margin;
  final bool selected;
  final Function(bool selected) onSelect;
  final String image;
  final double? fontSize;
  final bool? isShadow;
  final double? borderRadius;

  const CustomChip({
    Key? key,
    required this.label,
    this.color,
    this.width,
    this.height,
    this.margin,
    this.selected = false,
    required this.onSelect,
    required this.image,
    this.fontSize,
    this.isShadow,
    this.borderRadius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final theme = Theme.of(context);
    return AnimatedContainer(
      width: width,
      height: height,
      margin: margin ?? const EdgeInsets.symmetric(vertical: 2, horizontal: 2),
      duration: const Duration(milliseconds: 300),
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        boxShadow: [
          isShadow == true
              ? BoxShadow(
                  blurRadius: 7,
                  spreadRadius: 1,
                  color: colorblack.withOpacity(0.1),
                )
              : const BoxShadow(
                  blurRadius: 0,
                  spreadRadius: 0,
                )
        ],
        color: selected ? color ?? colorred : colorwhite,
        borderRadius: BorderRadius.all(
          Radius.circular(
            selected ? (borderRadius ?? 10) : (borderRadius ?? 3),
          ),
        ),
        border: Border.all(
          color: selected ? (colorred.withOpacity(0.2)) : colorwhite,
          width: 1,
        ),
      ),
      child: InkWell(
        borderRadius: BorderRadius.all(Radius.circular(selected ? 10 : 5)),
        onTap: () => onSelect(!selected),
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Positioned(
              
              // left: 9,
              // right: 9,
              bottom: 5,
              child: Text(
                label,
                // maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: fontSize,
                  color: selected ? colorred : colorblack.withOpacity(0.6),
                ),
              ),
            ),
          // Image.asset(image)
            SizedBox(
              // height: 80,
              // width: 80,
              child: SvgPicture.asset(image)),
          ],
        ),
      ),
    );
  }
}
