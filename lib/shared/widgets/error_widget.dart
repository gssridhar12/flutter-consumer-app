import 'package:flutter/material.dart';
import 'package:flutter_consumer_app/core/constant/constant.dart';
import 'package:sizer/sizer.dart';

class ShowErrorWidget extends StatelessWidget {
  const ShowErrorWidget({super.key, this.errorText = "Something went wrong"});

  final String errorText;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 30.h,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.error),
          sbox,
          Text(errorText),
        ],
      ),
    );
  }
}
