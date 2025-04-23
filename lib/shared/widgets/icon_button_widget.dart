import 'package:flutter/material.dart';
import 'package:flutter_consumer_app/core/colors/colors.dart';

class IconButtonWidget extends StatelessWidget {
  const IconButtonWidget({
    super.key,
    required this.buttonName,
    this.onTap,
    this.buttonIcon = Icons.chat,
  });
  final String buttonName;
  final IconData buttonIcon;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
        style: ButtonStyle(
            padding:
                MaterialStateProperty.all<EdgeInsets>(const EdgeInsets.all(15)),
            iconColor: const MaterialStatePropertyAll(colorred),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.0),
                    side: const BorderSide(color: Colors.red)))),
        onPressed: () {
          onTap!();
        },
        icon: Icon(buttonIcon),
        label: Text(
          buttonName,
          style: const TextStyle(color: colorred),
        ));
  }
}
