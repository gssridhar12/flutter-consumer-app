// import 'package:flutter/material.dart';
// import 'package:flutter_consumer_app/core/colors/colors.dart';
// import 'package:flutter_consumer_app/core/constant/constant.dart';
// import 'package:flutter_consumer_app/features/auth_section/presentation/widgets/appbar_widget.dart';
// import 'package:flutter_consumer_app/features/auth_section/presentation/widgets/button_widget.dart';
// import 'package:flutter_consumer_app/features/auth_section/presentation/widgets/text_and_subtitle_widget.dart';
// import 'package:flutter_consumer_app/features/home_section/presentation/pages/home_page.dart';
// import 'package:flutter_consumer_app/shared/widgets/colored_safearea.dart';
// import 'package:flutter_consumer_app/shared/widgets/custom_chip_widget.dart';
// import 'package:flutter_consumer_app/utils/navigation.dart';

// class ChooseLocationPage extends StatefulWidget {
//   const ChooseLocationPage({super.key});

//   @override
//   State<ChooseLocationPage> createState() => _ChooseLocationPageState();
// }

// class _ChooseLocationPageState extends State<ChooseLocationPage> {
//   int? _value;
//   bool isSelected = false;
//   List<Map<String, String>> cityData = [
//     {'label': 'Delhi NCR', 'icon': "assets/photos/delhi.png"},
//     {'label': 'Bengaluru', 'icon': "assets/photos/banglore.png"},
//     {'label': 'Pune', 'icon': "assets/photos/pune.png"},
//     {'label': 'Ahmedabad', 'icon': "assets/photos/aamdabaad.png"},
//     {'label': 'Chandigarh', 'icon': "assets/photos/chandighard.png"},
//     {'label': 'Chennai', 'icon': "assets/photos/channai.png"},
//     {'label': 'Hyderabad', 'icon': "assets/photos/hydrabaad.png"},
//     {'label': 'Kolkata', 'icon': "assets/photos/kolkata.png"},
//   ];
//   @override
//   Widget build(BuildContext context) {
//     final width = MediaQuery.of(context).size.width;

//     return ColoredSafeArea(
//       color: bggray,
//       child: Scaffold(
//         appBar: const PreferredSize(
//             preferredSize: Size.fromHeight(70), child: AppBarWidget()),
//         body: SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: padding5),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 const Padding(
//                   padding: EdgeInsets.symmetric(horizontal: padding20),
//                   child: TitleAndSubtitleWidget(
//                       titile: 'Which city are you from?',
//                       subtitle: 'You can choose multiple cities'),
//                 ),
//                 SizedBox(
//                   height: 800,
//                   child: Padding(
//                     padding: const EdgeInsets.all(padding15),
//                     child: GridView.builder(
//                       shrinkWrap: true,
//                       gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                         crossAxisCount: 2,
//                       ),
//                       itemCount: cityData.length,
//                       itemBuilder: (BuildContext context, int index) {
//                         return Padding(
//                           padding: const EdgeInsets.all(padding5),
//                           child: CustomChip(
//                             borderRadius: 12,
//                             fontSize: 16,
//                             image:cityData[index]['icon']!,
//                             label: cityData[index]['label']!,
//                             width: width * 0.20,
//                             height: width * 0.15,
//                             color: colorred.withOpacity(0),
//                             selected: _value == index,
//                             isShadow: true,
//                             onSelect: (string) {
//                               setState(
//                                 () {
//                                   _value = (string ? index : null)!;
//                                   isSelected = true;
//                                 },
//                               );
//                             },
//                           ),
//                         );
//                       },
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(padding20),
//                   child: ButtonWidget(
//                     text: 'Continue',
//                     color: isSelected == false ? colorgrey : colorred,
//                     onPressed: () {
//                       isSelected != false
//                           ? AppNavigation.pushNavigation(
//                               context,
//                               const HomePage(
                                
//                               ),
//                             )
//                           : null;
//                     },
//                     width: width,
//                   ),
//                 ),
//                 Center(
//                   child: Padding(
//                     padding: const EdgeInsets.all(padding20),
//                     child: Text(
//                       'As of now, Megmo partners offer services in these cities only. However, feel free to pick a city for exploring the app, and help Megmo grow.',
//                       style: TextStyle(
//                         fontSize: 15,
//                         color: colorblack.withOpacity(0.5),
//                       ),
//                     ),
//                   ),
//                 ),
//                 const Spacer(),
//                 const Center(
//                   child: Padding(
//                     padding: EdgeInsets.all(padding),
//                     child: Text(
//                       //TODO add rich text to terms and service
//                       'By signing up, you agree to Megmo’s Terms of service',
//                       style: TextStyle(
//                           color: colorblack,
//                           decoration: TextDecoration.underline),
//                     ),
//                   ),
//                 ),
//                 sbox
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter_consumer_app/core/colors/colors.dart';
import 'package:flutter_consumer_app/core/constant/constant.dart';
import 'package:flutter_consumer_app/core/images/images.dart';
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
  int? _value;
  bool isSelected = false;

  // List of city data (city name and icon)
  // List<Map<String, String>> cityData = [
  //   {'label': 'Delhi NCR', 'icon': "assets/photos/delhi.png"},
  //   {'label': 'Bengaluru', 'icon': "assets/photos/banglore.png"},
  //   {'label': 'Pune', 'icon': "assets/photos/pune.png"},
  //   {'label': 'Ahmedabad', 'icon': "assets/photos/aamdabaad.png"},
  //   {'label': 'Chandigarh', 'icon': "assets/photos/chandighard.png"},
  //   {'label': 'Chennai', 'icon': "assets/photos/channai.png"},
  //   {'label': 'Hyderabad', 'icon': "assets/photos/hydrabaad.png"},
  //   {'label': 'Kolkata', 'icon': "assets/photos/kolkata.png"},
  // ];

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
              // Use Expanded or Flexible to ensure the GridView takes available space
              Expanded(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10, // Added spacing
                    crossAxisSpacing: 10, // Added spacing
                  ),
                  itemCount: CityImage.cities.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(padding5),
                      child: CustomChip(
                        borderRadius: 12,
                        fontSize: 16,
                        image: CityImage.cities[index],
                        label: CityImage.citylable[index],
                        width: width * 0.20,
                        height: width * 0.15,
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
              Padding(
                padding: const EdgeInsets.all(padding20),
                child: ButtonWidget(
                  text: 'Continue',
                  color: isSelected == false ? colorgrey : colorred,
                  onPressed: () {
                    if (isSelected) {
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
                    'As of now, Megmo partners offer services in these cities only. However, feel free to pick a city for exploring the app, and help Megmo grow.',
                    style: TextStyle(
                      fontSize: 15,
                      color: colorblack.withOpacity(0.5),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20), // Add space to avoid overflow
              const Center(
                child: Padding(
                  padding: EdgeInsets.all(padding),
                  child: Text(
                    'By signing up, you agree to Megmo’s Terms of service',
                    style: TextStyle(
                        color: colorblack,
                        decoration: TextDecoration.underline),
                  ),
                ),
              ),
              const SizedBox(height: 20), // Add space before the bottom
            ],
          ),
        ),
      ),
    );
  }
}
