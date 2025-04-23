import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_consumer_app/core/colors/colors.dart';

class CountDownWidget extends StatelessWidget {
  const CountDownWidget({
    super.key,
    required this.width,
    required this.cancelDuration,
    required this.controller,
    this.onComplete,
  });

  final double width;
  final int cancelDuration;
  final CountDownController controller;
  final void Function()? onComplete;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: SizedBox(
        height: width * 0.23,
        width: width * 0.23,
        child: CircularCountDownTimer(
          duration: cancelDuration > 0 ? cancelDuration : 0,
          initialDuration: 0,
          controller: controller,
          width: MediaQuery.of(context).size.width / 2,
          height: MediaQuery.of(context).size.height / 2,
          ringColor: colorred.withOpacity(0.2),
          ringGradient: null,
          fillColor: colorred,
          fillGradient: null,
          backgroundColor: colorwhite,
          backgroundGradient: null,
          strokeWidth: 15.0,
          strokeCap: StrokeCap.round,
          textStyle: const TextStyle(
              fontSize: 30.0, color: colorblack, fontWeight: FontWeight.bold),
          textFormat: CountdownTextFormat.MM_SS,
          isReverse: true,
          isReverseAnimation: true,
          isTimerTextShown: true,
          autoStart: true,
          onStart: () {
            debugPrint('Countdown Started');
          },
          onComplete: () {
            onComplete!();
            debugPrint('Countdown Ended');
          },
          onChange: (String timeStamp) {
            debugPrint('Countdown Changed $timeStamp');
          },
          timeFormatterFunction: (defaultFormatterFunction, duration) {
            if (duration.inSeconds == 0) {
              return "Start";
            } else {
              return Function.apply(defaultFormatterFunction, [duration]);
            }
          },
        ),
      ),
    );
  }
}
