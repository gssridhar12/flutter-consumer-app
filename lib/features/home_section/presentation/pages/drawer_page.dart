import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_consumer_app/core/colors/colors.dart';
import 'package:flutter_consumer_app/core/constant/constant.dart';
import 'package:flutter_consumer_app/features/auth_section/presentation/pages/login_or_signup_page.dart';
import 'package:flutter_consumer_app/features/auth_section/presentation/pages/three_options.dart';
import 'package:flutter_consumer_app/core/constant/list_tile.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/pages/become_partner/become_a_partner.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/pages/view_profile_page.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/widgets/drawer_list_tile_widget.dart';
import 'package:flutter_consumer_app/utils/navigation.dart';
import 'package:flutter_initicon/flutter_initicon.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sizer/sizer.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    super.key,
    required this.scaffoldKey,
    required this.name,
    required this.isGuestUser,
  });
  final GlobalKey<ScaffoldState> scaffoldKey;
  final String name;
  final bool isGuestUser;

  @override
  Widget build(BuildContext context) {
    // final width = MediaQuery.of(context).size.width;

    return Drawer(
      width: 73.w,
      backgroundColor: colorwhite,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
      ),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: padding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              sbox,
              IconButton(
                onPressed: () {
                  scaffoldKey.currentState!.closeDrawer();
                },
                icon: const Icon(Icons.close),
              ),
              sbox,
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Initicon(
                      size: 55,
                      text: name,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: padding),
                    child: SizedBox(
                      width: 38.w,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            name,
                            style: const TextStyle(
                                overflow: TextOverflow.ellipsis,
                                fontSize: 22,
                                color: colorblack,
                                fontWeight: FontWeight.w700),
                          ),
                          sbox5,
                          GestureDetector(
                            onTap: () {
                              !isGuestUser
                                  ? AppNavigation.pushNavigation(
                                      context, const ViewProfilePage())
                                  : AppNavigation.pushNavigation(
                                      context, const LoginOrSignUpPage());
                            },
                            child: Text(
                              !isGuestUser ? 'Edit Profile' : 'Login or Signup',
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  fontSize: 16,
                                  overflow: TextOverflow.ellipsis,
                                  color: colorblack.withOpacity(0.5),
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              const Divider(
                thickness: 1,
              ),
              sbox,
              //location,my bookings, my notification,my chats, my wallet, my ratings
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 6,
                itemBuilder: (context, index) {
                  return DrawerListTileWidget(
                    isEnabled: !isGuestUser,
                    ontap: () {
                      if (index == 2) {
                        showCalendarsModalBottom(context);
                      } else {
                        var navigationPage = navigationPagesMainMenu[index];
                        if (navigationPage != null) {
                          AppNavigation.pushNavigation(context, navigationPage);
                        }
                      }
                    },
                    title: titlesMainMenu[index],
                    isTrailing: index == 0 ? false : true,
                    leadingIcon: iconsMainMenu[index],
                    leadingIconColor: colorred,
                    trailingIcon: Container(
                      width: 13.w,
                      height: 04.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: colorblack.withOpacity(0.3)),
                      child: const Center(child: Text('2')),
                    ),
                  );
                },
              ),
              sbox,
              Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const BecomeAPartner(),
                      ),
                    );
                  },
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 5,
                              spreadRadius: 1,
                              color: colorblack.withOpacity(0.1))
                        ],
                        borderRadius: BorderRadius.circular(12),
                        color: colorwhite),
                    child: const FittedBox(
                      child: Text(
                        'Register as a Partner!',
                        style: TextStyle(color: colorred),
                      ),
                    ),
                  ),
                ),
              ),
              sbox,
              const Divider(
                thickness: 1,
              ),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 2,
                itemBuilder: (context, index) {
                  return DrawerListTileWidget(
                    isEnabled: index == 0 && isGuestUser ? false : true,
                    navigation: navigationPagesSecondMenu[index],
                    ontap: () {
                      var navigationPage = navigationPagesSecondMenu[index];
                      AppNavigation.pushNavigation(context, navigationPage);
                    },
                    // function: logoutFromAccount(context),
                    title: titlesSecondMenu[index],
                    isTrailing: false,
                    leadingIcon: iconsSecondMenu[index],
                  );
                },
              ),
              const Divider(
                thickness: 1,
              ),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 4,
                itemBuilder: (context, index) {
                  return DrawerListTileWidget(
                    leadingIcon: iconsThirdMenu[index],
                    title: titlesThirdMenu[index],
                    isTrailing: true,
                    ontap: () {
                      AppNavigation.pushNavigation(
                          context, navigationPagesThirdMenu[index]);
                    },
                    trailingIcon: const Icon(Icons.ios_share_outlined),
                  );
                },
              ),
              const Divider(
                thickness: 1,
              ),
              Padding(
                padding: const EdgeInsets.all(padding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Megmo v0.1.0.0'),
                    sbox,
                    const Text('© 2023 Megmo Pvt. Ltd. All Rights Reserved.'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  logoutFromAccount(buildContext) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.remove('key');
    log('key removed ');
    Navigator.pushAndRemoveUntil(
        buildContext,
        MaterialPageRoute(
          builder: (context) => const ThreeOptionsPage(),
        ),
        (route) => false);
  }
}
