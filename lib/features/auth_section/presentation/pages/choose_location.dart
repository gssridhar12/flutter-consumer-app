import 'package:flutter/material.dart';
import 'package:flutter_consumer_app/core/colors/colors.dart';
import 'package:flutter_consumer_app/core/constant/constant.dart';
import 'package:flutter_consumer_app/features/auth_section/presentation/widgets/appbar_widget.dart';
import 'package:flutter_consumer_app/features/auth_section/presentation/widgets/button_widget.dart';
import 'package:flutter_consumer_app/features/auth_section/presentation/widgets/text_and_subtitle_widget.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/pages/home_page.dart';
import 'package:flutter_consumer_app/shared/widgets/colored_safearea.dart';
import 'package:flutter_consumer_app/shared/widgets/custom_chip_widget.dart';
import 'package:flutter_consumer_app/utils/navigation.dart';

class ChooseLocationPage extends StatefulWidget {
  const ChooseLocationPage({super.key});

  @override
  State<ChooseLocationPage> createState() => _ChooseLocationPageState();
}

class _ChooseLocationPageState extends State<ChooseLocationPage> {
  List<int> selectedIndices = [];

  List<Map<String, String>> options = [
    {'name': 'Mumbai', 'icon': 'assets/images/cities/Mumbai.svg'},
    {'name': 'Bengaluru', 'icon': 'assets/images/cities/bangalore.svg'},
    {'name': 'Pune', 'icon': 'assets/images/cities/Pune.svg'},
  ];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return ColoredSafeArea(
      color: bggray,
      child: Scaffold(
        appBar: const PreferredSize(
            preferredSize: Size.fromHeight(70), child: AppBarWidget()),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: padding5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: padding20),
                child: TitleAndSubtitleWidget(
                    titile: 'Which city are you from?',
                    subtitle: 'You can choose multiple cities'),
              ),
              Padding(
                padding: const EdgeInsets.all(padding15),
                child: GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  itemCount: options.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(padding5),
                      child: CustomChip(
                        borderRadius: 12,
                        fontSize: 16,
                        image: options[index]['icon']!,
                        label: options[index]['name']!,
                        width: width * 0.25,
                        height: width * 0.25,
                        color: colorred.withAlpha(0),
                        selected: selectedIndices.contains(index),
                        isShadow: true,
                        onSelect: (selected) {
                          setState(() {
                            if (selected) {
                              selectedIndices.add(index);
                            } else {
                              selectedIndices.remove(index);
                            }
                          });
                        },
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(padding20),
                child: ButtonWidget(
                  text: 'Continue',
                  color:
                  selectedIndices.isEmpty ? colorgrey : colorred,
                  onPressed: () {
                    if (selectedIndices.isNotEmpty) {
                      AppNavigation.pushNavigation(
                        context,
                        const HomePage(),
                      );
                    }
                  },
                  width: width,
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(padding20),
                  child: Text(
                    'As of now, Wigglypet partners offer services in these cities only. However, feel free to pick a city for exploring the app, and help Wigglypet grow.',
                    style: TextStyle(
                      fontSize: 15,
                      color: colorblack.withOpacity(0.5),
                    ),
                  ),
                ),
              ),
              const Spacer(),
              const Center(
                child: Padding(
                  padding: EdgeInsets.all(padding),
                  child: Text(
                    'By signing up, you agree to Wigglypet s Terms of service',
                    style: TextStyle(
                        color: colorblack,
                        decoration: TextDecoration.underline),
                  ),
                ),
              ),
              sbox
            ],
          ),
        ),
      ),
    );
  }
}
