import 'dart:developer';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_consumer_app/core/colors/colors.dart';
import 'package:flutter_consumer_app/core/constant/constant.dart';
import 'package:flutter_consumer_app/features/auth_section/presentation/pages/three_options.dart';
import 'package:flutter_consumer_app/features/auth_section/services/firebase_auth_service.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/widgets/AppbarWedget.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/widgets/icon_and_text_widget.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/widgets/settings_tile_widget.dart';
import 'package:flutter_consumer_app/shared/widgets/colored_safearea.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({
    super.key,
  });

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  late SharedPreferences prefs;
  initSharedPref() async {
    prefs = await SharedPreferences.getInstance();
  }

  @override
  void initState() {
    initSharedPref();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // final width = MediaQuery.of(context).size.width;

    return ColoredSafeArea(
      color: bggray,
      child: Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: AppBarWidgetPrimary(
            text: 'Settings',
          ),
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: padding20),
            child: Column(
              children: [
                const SettingsTIleWidget(
                  text: 'Get updates on SMS',
                ),
                const SettingsTIleWidget(
                  text: 'Get updates on Email',
                ),
                const SettingsTIleWidget(
                  text: 'Get updates on Whatsapp',
                ),
                sbox,
                 IconAndTextWidget(
                  onTap: () async {
                    prefs.remove('id');
                    log('Key removed from sharedpreference');
                    FirebaseAuthentication.logoutWithGoogle();
                    FirebaseAuth.instance.signOut();
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ThreeOptionsPage(),
                        ),
                        (route) => false);
                  },
                  text: 'Delete account',
                  icon: Icons.delete_outline_outlined,
                ),
                // const IconAndTextWidget(
                  
                //   text: 'Delete account',
                //   icon: Icons.delete_outline_outlined,
                // ),
                sbox,
                IconAndTextWidget(
                  onTap: () async {
                    prefs.remove('id');
                    log('Key removed from sharedpreference');
                    FirebaseAuthentication.logoutWithGoogle();
                    FirebaseAuth.instance.signOut();
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ThreeOptionsPage(),
                        ),
                        (route) => false);
                  },
                  text: 'Log Out',
                  icon: Icons.logout_outlined,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// import 'dart:developer';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_consumer_app/core/colors/colors.dart';
// import 'package:flutter_consumer_app/core/constant/constant.dart';
// import 'package:flutter_consumer_app/features/auth_section/presentation/pages/three_options.dart';
// import 'package:flutter_consumer_app/features/auth_section/services/firebase_auth_service.dart';
// import 'package:flutter_consumer_app/features/home_section/presentation/widgets/AppbarWedget.dart';
// import 'package:flutter_consumer_app/features/home_section/presentation/widgets/icon_and_text_widget.dart';
// import 'package:flutter_consumer_app/features/home_section/presentation/widgets/settings_tile_widget.dart';
// import 'package:flutter_consumer_app/shared/widgets/colored_safearea.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// class SettingsPage extends StatefulWidget {
//   const SettingsPage({
//     super.key,
//   });

//   @override
//   State<SettingsPage> createState() => _SettingsPageState();
// }

// class _SettingsPageState extends State<SettingsPage> {
//   late SharedPreferences prefs;
//   initSharedPref() async {
//     prefs = await SharedPreferences.getInstance();
//   }

//   @override
//   void initState() {
//     initSharedPref();
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     // final width = MediaQuery.of(context).size.width;

//     return ColoredSafeArea(
//       color: bggray,
//       child: Scaffold(
//         appBar: const PreferredSize(
//           preferredSize: Size.fromHeight(70),
//           child: AppBarWidgetPrimary(
//             text: 'Settings',
//           ),
//         ),
//         body: SingleChildScrollView(
//           physics: const BouncingScrollPhysics(),
//           child: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: padding20),
//             child: Column(
//               children: [
//                 const SettingsTIleWidget(
//                   text: 'Get updates on SMS',
//                 ),
//                 const SettingsTIleWidget(
//                   text: 'Get updates on Email',
//                 ),
//                 const SettingsTIleWidget(
//                   text: 'Get updates on Whatsapp',
//                 ),
//                 sbox,
//                 IconAndTextWidget(
//                   onTap: () async {
//                     prefs.remove('id');
//                     log('Key removed from sharedpreference');
//                     FirebaseAuthentication.logoutWithGoogle();
//                     FirebaseAuth.instance.signOut();
//                     Navigator.pushAndRemoveUntil(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => const ThreeOptionsPage(),
//                         ),
//                         (route) => false);
//                   },
//                   text: 'Delete account',
//                   icon: Icons.delete_outline_outlined,
//                 ),
//                 // const IconAndTextWidget(
//                 //   text: 'Delete account',
//                 //   icon: Icons.delete_outline_outlined,
//                 // ),
//                 sbox,
//                 IconAndTextWidget(
//                   onTap: ()
//                   // async 
//                    {
//                    // prefs.remove('id');
//                    // log('Key removed from sharedpreference');
//                     // FirebaseAuthentication.logoutWithGoogle();
//                     // FirebaseAuth.instance.signOut();
//                     Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => const ThreeOptionsPage(),
//                         )
//                         //(route) => false
//                         );
//                   },
//                   text: 'Log Out',
//                   icon: Icons.logout_outlined,
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
