import 'package:flutter/material.dart';

class TextWidget extends StatefulWidget {
  const TextWidget({
    Key? key,
    required this.text,
    this.textcolor,
  }) : super(key: key);
  final String text;
  final Color? textcolor;
  @override
  State<TextWidget> createState() => _ShowWidgetPaymentState();
}

class _ShowWidgetPaymentState extends State<TextWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 355,
          height: 80,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              widget.text,
              style: TextStyle(
                color: widget.textcolor ?? Colors.black.withOpacity(0.6),
                fontSize: 14,
                fontWeight: FontWeight.w400,
                height: 1.50,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
