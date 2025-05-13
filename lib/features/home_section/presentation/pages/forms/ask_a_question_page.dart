import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_consumer_app/core/colors/colors.dart';
import 'package:flutter_consumer_app/features/auth_section/presentation/widgets/button_widget.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/widgets/option_selection_widget.dart';
import 'package:flutter_consumer_app/shared/widgets/colored_safearea.dart';
import 'package:flutter_consumer_app/shared/widgets/secondary_appbar_widget.dart';
import 'package:flutter_consumer_app/utils/navigation.dart';
import 'package:sizer/sizer.dart';

class AskAQuestionPage extends StatefulWidget {
  const AskAQuestionPage({super.key});

  @override
  State<AskAQuestionPage> createState() => _AskAQuestionPageState();
}

class _AskAQuestionPageState extends State<AskAQuestionPage> {
  bool option1 = false;

  bool option2 = false;

  bool option3 = false;

  int maxLength = 500;
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ColoredSafeArea(
      color: bggray,
      child: Scaffold(
        backgroundColor: bggray,
        appBar: const PreferredSize(
            preferredSize: Size.fromHeight(70),
            child: AppBarWidgetSecondary(text: '🙋🏻‍♂️ Ask a Question')),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  width: 100.w,
                  height: 30.h,
                  decoration: const BoxDecoration(color: colorwhite),
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      TextField(
                        controller: _controller,
                        style: const TextStyle(height: 1),
                        maxLines:
                            null, // Set maxLines to null for multi-line support
                        expands:
                            true, // Allow the TextField to expand to fill available space
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                        ),
                        onChanged: (value) {
                          if (value.length > maxLength) {
                            setState(() {
                              _controller.text = value.substring(0, maxLength);
                              _controller.selection =
                                  TextSelection.collapsed(offset: maxLength);
                            });
                          }
                          setState(() {});
                        },
                      ),
                      Container(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          '${_controller.text.length}/$maxLength',
                          style: const TextStyle(color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                ),
                OptionSelectionWidget(
                  text: 'Receive Answers in Wigglypet Chat',
                  optionNumber: option1,
                  onChanged: (check) {
                    check = !check;
                  },
                ),
                OptionSelectionWidget(
                  text: 'Receive Answers on Whatsapp',
                  optionNumber: option1,
                  onChanged: (check) {
                    check = !check;
                  },
                ),
                OptionSelectionWidget(
                  text: 'Receive Answers on Registered Email',
                  optionNumber: option1,
                  onChanged: (check) {
                    option1 = !option1;
                  },
                ),
                ButtonWidget(
                  borderRadius: 15,
                  text: 'Submit',
                  width: 90.w,
                  onPressed: () {
                    AppNavigation.popNavigation(context);
                  },
                ),
                ButtonWidget(
                  borderRadius: 15,
                  text: 'Submit and Ask another Question',
                  borderColor: colorred,
                  color: colorwhite,
                  buttonColor: colorred,
                  width: 90.w,
                  onPressed: () {
                    AppNavigation.popNavigation(context);
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
