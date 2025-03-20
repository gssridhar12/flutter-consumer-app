import 'package:flutter/material.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/widgets/toggle_button_widget.dart';

class SettingsTIleWidget extends StatelessWidget {
  const SettingsTIleWidget({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
        ToggleButtonWidget()
      ],
    );
  }
}
