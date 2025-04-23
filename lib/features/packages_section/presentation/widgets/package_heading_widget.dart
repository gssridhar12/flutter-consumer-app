import 'package:flutter/material.dart';
import 'package:flutter_consumer_app/core/colors/colors.dart';

// ignore: must_be_immutable
class PackageHeadingWidget extends StatelessWidget {
  PackageHeadingWidget({
    super.key,
    required this.text,
    required this.icon,
    this.trailingWidget,
  });
  final String text;
  final IconData icon;
  bool? trailingWidget = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 5),
          child: Icon(icon, size: 22, color: colorred),
        ),
        Text(text,
            style: const TextStyle(fontSize: 18, color: colorred),
            textAlign: TextAlign.start),
        trailingWidget == true ? const Spacer() : const SizedBox.shrink(),
        trailingWidget != true
            ? Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    height: 15,
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: colorred),
                      ),
                    ),
                  ),
                ),
              )
            : const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'See all',
                    style: TextStyle(fontSize: 14, color: colorblack),
                  ),
                  Icon(
                    Icons.keyboard_arrow_right_outlined,
                    size: 18,
                    color: colorblack,
                  )
                ],
              ),
      ],
    );
  }
}
