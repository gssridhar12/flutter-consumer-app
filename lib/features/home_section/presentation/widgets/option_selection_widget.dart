// ignore: must_be_immutable
import 'package:flutter/material.dart';
import 'package:flutter_consumer_app/core/colors/colors.dart';

// ignore: must_be_immutable
class OptionSelectionWidget extends StatefulWidget {
  OptionSelectionWidget(
      {super.key,
      required this.optionNumber,
      required this.onChanged,
      required this.text});

  bool optionNumber;
  String text;
  void Function(bool)? onChanged;

  @override
  State<OptionSelectionWidget> createState() => _OptionSelectionWidgetState();
}

class _OptionSelectionWidgetState extends State<OptionSelectionWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 2),
      child: Row(
        children: [
          Text(
            widget.text,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
          ),
          const Spacer(),
          Checkbox(
            activeColor: colorred,
            value: widget.optionNumber,
            onChanged: (value) {
              setState(() {
                widget.optionNumber = !widget.optionNumber;
              });
            },
          )
        ],
      ),
    );
  }
}
