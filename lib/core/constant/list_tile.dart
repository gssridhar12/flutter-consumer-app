import 'package:flutter/material.dart';
import 'package:flutter_consumer_app/features/chat_section/presentation/pages/chat_home.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/pages/RatingHomePage.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/pages/bookings_page.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/pages/forms/ask_a_question_page.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/pages/forms/knowledge_base_page.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/pages/forms/report_a_bug_page.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/pages/forms/suggest_a_feature_page.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/pages/location_page.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/pages/notifications_bottomsheet.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/pages/settings_page.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/pages/user_liked_page.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/pages/view_profile_page.dart';

import '../../features/home_section/presentation/pages/home_page.dart';
import '../../features/home_section/presentation/pages/search_page.dart';
import '../../features/home_section/presentation/widgets/home_page_widget.dart';
// import 'package:flutter_consumer_app/features/rating/presentation/pages/WalletePage.dart';

List<String> titlesMainMenu = [
  'My Location',
  'My Bookings',
  'My Notifications',
  'My Chats',
  // 'My Wallet',
  'My Ratings',
  'Liked Packages',
];

List<String> titlesSecondMenu = [
  'Settings',
  'Help Centre',
];
List<String> titlesThirdMenu = [
  'Ask a Question',
  'Suggest a feature',
  'Report a bug',
  'Knowledge base',
];
List<Icon> iconsMainMenu = [
  const Icon(Icons.location_on),
  const Icon(Icons.receipt),
  const Icon(Icons.notifications_active),
  const Icon(Icons.chat),
  // const Icon(Icons.wallet),
  const Icon(Icons.star),
  const Icon(Icons.star),
];
List<Icon> iconsSecondMenu = [
  const Icon(Icons.settings),
  const Icon(Icons.help_center),
];

List<Widget> iconsThirdMenu = [
  const Text('🙋🏻‍♂️'),
  const Text('✨'),
  const Text('🪲'),
  const Text('📚'),
];

List<dynamic> navigationPagesMainMenu = [
  const LocationPage(),
  const BookingsPage(),

  ///return  null to show [showCalendarsModalBottom]
  null,
  const ChatHomePage(),
  // const WalletPage(),
  const RatingHomePage(),
  const UserLikedPage()
];
List<Widget> navigationPagesSecondMenu = [
  const SettingsPage(),
  const LocationPage(),
];


//  const List<String> cityNames = [
//    'Ahmedabad',
//    'Bengaluru',
//    'Chandigarh',
//    'Chennai',
//    'Delhi',
//    'Hyderabad',
//    'Kolkata',
//    'Mumbai',
//    'Pune',
//  ];
class BottomNavbarWidgets{
  static List<Widget> list = [
    HomeScrollContent(),
    const SearchPage(),
    const BookingsPage(),
    const ViewProfilePage(),

  ];
}

class Cities {
  static const List<String> cityNames = [
    'Bengaluru',

  ];
  static const List<String> cities = [
    'assets/images/cities/bangalore.svg',
  ];

  // static const List<String> cities = [
  //   'assets/images/cities/Ahmedabad.svg',
  //   'assets/images/cities/bangalore.svg',
  //   'assets/images/cities/Chandigarh.svg',
  //   'assets/images/cities/chennai.svg',
  //   'assets/images/cities/Delhi.svg',
  //   'assets/images/cities/Hyderabad.svg',
  //   'assets/images/cities/Kolkata.svg',
  //   'assets/images/cities/Mumbai.svg',
  //   'assets/images/cities/Pune.svg',
  // ];
  static List<String> citylable = cityNames;

  List<Map<String, String>> options = [
    // {'name': 'Mumbai', 'icon': 'assets/images/cities/Mumbai.svg'},
    {'name': 'Bengaluru', 'icon': 'assets/images/cities/bangalore.svg'}
    // {'name': 'Pune', 'icon': 'assets/images/cities/Pune.svg'},
  ];
}
  List<Widget> navigationPagesThirdMenu = [
    const AskAQuestionPage(),
    const SuggestAFeaturePage(),
    const ReportABugPage(),
    const KnowledgeBasePage(),
  ];



  Future<void> showCalendarsModalBottom(BuildContext context) async {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      showModalBottomSheet(
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
          side: BorderSide(color: Colors.white),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        context: context,
        builder: (context) {
          return const NotificationsBottomSheetWidget();
        },
      );
    });
  }

