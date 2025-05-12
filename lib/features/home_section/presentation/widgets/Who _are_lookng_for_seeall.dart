// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_constructors_in_immutables, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_consumer_app/core/colors/colors.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/pages/category/specific_category_page.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/pages/drawer_page.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/widgets/heading_text_widget.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/widgets/home_appbar_widget.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/widgets/search_field_widget.dart';
import 'package:flutter_consumer_app/main.dart';
import 'package:flutter_consumer_app/shared/widgets/colored_safearea.dart';

class Who_AreLookngForSeeall extends StatefulWidget {
  @override
  State<Who_AreLookngForSeeall> createState() => _Who_AreLookngForSeeallState();
}

class _Who_AreLookngForSeeallState extends State<Who_AreLookngForSeeall> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  final bool isGuestUser = localDb.getBool('isGuestUser')!;

  final String? fullName = localDb.getString('fullName') ?? "Guest";

  void handleCardTap(String category) {
    switch (category) {
      case 'Make up artists':
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SpecificCategoryPage(
              isGuestUser: isGuestUser,
              categoryTitle: category,
            ),
          ),
        );
        break;
      case 'Musicians':
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SpecificCategoryPage(
              isGuestUser: isGuestUser,
              categoryTitle: category,
            ),
          ),
        );
        break;
      case 'Models':
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SpecificCategoryPage(
              isGuestUser: isGuestUser,
              categoryTitle: category,
            ),
          ),
        );
        break;
      case 'Photographers':
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SpecificCategoryPage(
              isGuestUser: isGuestUser,
              categoryTitle: category,
            ),
          ),
        );
        break;
      case 'Baby sitters':
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SpecificCategoryPage(
              isGuestUser: isGuestUser,
              categoryTitle: category,
            ),
          ),
        );
        break;
      case 'Pet trainers':
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SpecificCategoryPage(
              isGuestUser: isGuestUser,
              categoryTitle: category,
            ),
          ),
        );
        break;
      case 'Yoga trainer':
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SpecificCategoryPage(
              isGuestUser: isGuestUser,
              categoryTitle: category,
            ),
          ),
        );
        break;
      case 'Models':
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SpecificCategoryPage(
              isGuestUser: isGuestUser,
              categoryTitle: category,
            ),
          ),
        );
        break;
      case 'Henna Artist':
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SpecificCategoryPage(
              isGuestUser: isGuestUser,
              categoryTitle: category,
            ),
          ),
        );
      default:
        debugPrint('Unknown category: $category');
    }
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return ColoredSafeArea(
      color: bggray,
      child: Scaffold(
        key: scaffoldKey,
        drawer: DrawerWidget(
            scaffoldKey: scaffoldKey,
            name: fullName != null ? fullName! : 'Guest',
            isGuestUser: isGuestUser),
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(70),
          child: HomeAppBarWidget(
            scaffoldKey: scaffoldKey,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SearchFieldWidget(
                backButton: true,
                width: width,
                text: 'Search for ‘Make up artists’',
              ),
              SizedBox(height: 15),
              HeadingTextWidget(
                  text: 'Who are you looking for?',
                  size: 22,
                  fontWeight: FontWeight.w600,
                  trailingButton: false,
                  textColor: colorblack.withOpacity(0.7)),
              const HeadingTextWidget(
                  text: 'Take a look at what Woofurs has to offer',
                  size: 15,
                  fontWeight: FontWeight.w400,
                  textColor: Colors.black54,
                  trailingButton: false),
              SizedBox(height: 10),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 5,
                  children: [
                    CategoryCard(
                      label: 'Make up artists',
                      Imagepath: 'assets/photos/mackup_art.png',
                      onTap: () => handleCardTap('Make up artists'),
                    ),
                    CategoryCard(
                      label: 'Musicians',
                      Imagepath: 'assets/photos/musian.png',
                      onTap: () => handleCardTap('Musicians'),
                    ),
                    CategoryCard(
                      label: 'Models',
                      Imagepath: 'assets/photos/model1.png',
                      onTap: () => handleCardTap('Models'),
                    ),
                    CategoryCard(
                      label: 'Photographers',
                      Imagepath: 'assets/photos/photographer.png',
                      onTap: () => handleCardTap('Photographers'),
                    ),
                    CategoryCard(
                      label: 'Baby sitters',
                      Imagepath: 'assets/photos/babysitter.png',
                      onTap: () => handleCardTap('Baby sitters'),
                    ),
                    CategoryCard(
                      label: 'Pet trainers',
                      Imagepath: 'assets/photos/dog.png',
                      onTap: () => handleCardTap('Pet trainers'),
                    ),
                    CategoryCard(
                      label: 'Yoga trainer',
                      Imagepath: 'assets/photos/yoga.png',
                      onTap: () => handleCardTap('Yoga trainer'),
                    ),
                    CategoryCard(
                      label: 'Henna Artist',
                      Imagepath: 'assets/photos/heena_.png',
                      onTap: () => handleCardTap('Henna Artist'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final String label;
  final String Imagepath;
  final VoidCallback onTap;

  CategoryCard(
      {required this.label, required this.Imagepath, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                Imagepath,
                height: 80,
                width: 80,
                fit: BoxFit.contain,
              ),
              SizedBox(height: 10),
              Text(label, style: TextStyle(fontSize: 16)),
            ],
          ),
        ),
      ),
    );
  }
}
