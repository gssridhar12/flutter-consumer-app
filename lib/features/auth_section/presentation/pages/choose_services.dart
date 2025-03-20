import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_consumer_app/core/colors/colors.dart';
import 'package:flutter_consumer_app/core/constant/constant.dart';
import 'package:flutter_consumer_app/features/auth_section/presentation/bloc/auth_bloc.dart';
import 'package:flutter_consumer_app/features/auth_section/presentation/widgets/button_widget.dart';
import 'package:flutter_consumer_app/shared/widgets/colored_safearea.dart';
import 'package:flutter_consumer_app/shared/widgets/custom_chip_widget.dart';

class ChooseService extends StatefulWidget {
  const ChooseService({super.key});

  @override
  State<ChooseService> createState() => _ChooseServiceState();
}

class _ChooseServiceState extends State<ChooseService> {
  int? _value;
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return ColoredSafeArea(
      color: bggray,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: padding, vertical: padding),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    (Icons.arrow_circle_left_outlined),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    'What are you looking for?',
                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.w400),
                  ),
                ),
              ],
            ),
          ),
        ),
        body: Stack(
          children: [
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'You can select multiple services',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: colorblack.withOpacity(0.5)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(padding15),
                    child: GridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                      ),
                      itemCount: 8,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.all(padding5),
                          child: CustomChip(
                            borderRadius: 12,
                            fontSize: 16,
                            image: 'assets/images/layer1.png',
                            label: 'Make up artists',
                            width: width * 0.25,
                            height: width * 0.25,
                            color: colorred.withOpacity(0),
                            selected: _value == index,
                            isShadow: true,
                            onSelect: (string) {
                              setState(
                                () {
                                  _value = (string ? index : null)!;
                                  isSelected = true;
                                },
                              );
                            },
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: width * 0.3,
                  ),
                ],
              ),
            ),
            Positioned(
              left: width * 0.05,
              bottom: 0,
              right: width * 0.05,
              child: ButtonWidget(
                onPressed: () {
                  isSelected != false
                      ? BlocProvider.of<AuthBloc>(context)
                          .add(CheckLoginStatus())
                      : null;
                },
                color: isSelected == false ? colorgrey : colorred,
                text: 'Continue',
                isPushreplacement: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
