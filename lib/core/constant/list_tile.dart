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
