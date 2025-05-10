import 'package:flutter/material.dart';
import 'package:flutter_consumer_app/core/colors/colors.dart';

class ContainerIconWidget extends StatelessWidget {
  const ContainerIconWidget({
    super.key,
    this.icon,
    this.onTap,
    this.text,
    this.isFavouite, this.trueIcon,
  });
  final IconData? icon;
  final IconData? trueIcon;
  final void Function()? onTap;
  final String? text;
  final bool? isFavouite;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!();
      },
      child: Container(
        // width: 40,
        // height: 40,
        decoration: BoxDecoration(
            color: colorwhite.withOpacity(0.5),
            borderRadius: BorderRadius.circular(25)),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: icon != null
              ? Padding(
                  padding: const EdgeInsets.all(5),
                  child: isFavouite == false
                      ? Icon(
                          icon,
                          color: colorred.withOpacity(0.5),
                          size: 25,
                        )
                      : Icon(
                          icon,
                          color: colorblack.withOpacity(0.5),
                          size: 25,
                        ))
              : Padding(
                  padding: const EdgeInsets.all(7),
                  child: Text(text!),
                ),
        ),
      ),
    );
  }
}
