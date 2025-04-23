import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_consumer_app/core/colors/colors.dart';

///Button with border Color
class ButtonBorderWidget extends StatelessWidget {
  const ButtonBorderWidget({
    Key? key,
    required this.text,
    this.navigation,
    this.color,
    this.width,
    this.onPressed,
    this.isPushreplacement,
    this.formKey,
    this.isLoading,
    this.borderRadius,
    this.borderColor,
    this.buttonColor,
  });

  final String text;
  final Widget? navigation;
  final Color? color;
  final Color? buttonColor;
  final Color? borderColor;
  final double? width;
  final bool? isPushreplacement;
  final GlobalKey<FormState>? formKey;
  final VoidCallback? onPressed;
  final bool? isLoading;
  final double? borderRadius;

  @override
  Widget build(BuildContext context) {
    final width1 = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: SizedBox(
        height: width1 * 0.12,
        width: width,
        child: ElevatedButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                    borderRadius != null ? borderRadius! : 10),
                side: BorderSide(
                  color: borderColor != null ? borderColor! : colorred,
                ),
              ),
            ),
            backgroundColor: MaterialStateProperty.all<Color>(
              buttonColor != null ? buttonColor! : colorwhite,
            ),
          ),
          onPressed: () {
            log('button clicked');
            if (formKey != null) {
              final isFormValid = formKey!.currentState!.validate();
              if (!isFormValid) {
                return;
              }
            }
            if (onPressed != null) {
              onPressed!();
              log('method executed');
            }
            if (isPushreplacement != true && navigation != null) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => navigation!,
                ),
              );
            } else if (isPushreplacement == true && navigation != null) {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => navigation!,
                ),
              );
            }
          },
          child: Text(
            text,
            style: TextStyle(
              color: buttonColor != null ? buttonColor! : colorred,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
