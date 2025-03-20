import 'package:after_layout/after_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_consumer_app/core/colors/colors.dart';
import 'package:flutter_consumer_app/core/constant/constant.dart';
import 'package:flutter_consumer_app/features/auth_section/presentation/bloc/auth_bloc.dart';
import 'package:flutter_consumer_app/features/auth_section/presentation/pages/three_options.dart';
import 'package:flutter_consumer_app/features/auth_section/presentation/utils/auth_validation_page.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/bloc/user_bloc/user_bloc.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/pages/become_partner/become_a_partner.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/widgets/home_page_widget.dart';
import 'package:flutter_consumer_app/features/network/presentation/bloc/network_bloc.dart';
import 'package:flutter_consumer_app/features/network/presentation/bloc/network_state.dart';
import 'package:flutter_consumer_app/features/network/presentation/pages/network_page.dart';
import 'package:flutter_consumer_app/main.dart';
import 'package:flutter_consumer_app/utils/navigation.dart';
import 'package:flutter_consumer_app/utils/snack_bar.dart';

///Splash page that showed begining of the app
///
///Uses [AfterLayoutMixin] Package for stopping the splash screen on first startup
class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage>
    with AfterLayoutMixin<SplashPage> {
  bool seen = (localDb.getBool('seen') ?? false);
  bool serviceScreenSeen = (localDb.getBool('serviceScreenSeen') ?? false);

  // Future checkFirstSeen() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   bool seen = (prefs.getBool('seen') ?? false);
  //   bool serviceScreenSeen = (prefs.getBool('serviceScreenSeen') ?? false);

  //   if (seen) {
  //     Future.delayed(const Duration(seconds: 1), () async {
  //       if (serviceScreenSeen) {
  //         Navigator.pushReplacement(
  //           context,
  //           MaterialPageRoute(
  //               builder: (BuildContext context) => const ChooseService()),
  //         );
  //       } else {
  //         AppNavigation.pushRepacementNavigation(
  //             context, const AuthValidationPage());
  //       }
  //     });
  //   } else {
  //     await prefs.setBool('seen', true);
  //     await prefs.setBool('serviceScreenSeen', true);
  //   }
  // }

  @override
  void afterFirstLayout(BuildContext context) {
    BlocProvider.of<NetworkCubit>(context).checkConnectivity();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return BlocListener<NetworkCubit, NetworkState>(
      listener: (context, state) {
        if (state is NetworkDisconnected) {
          Utils.showSnackbar('You are Offline');
          AppNavigation.pushNavigation(context, const NetworkPage());
        } else if (state is NetworkConnected) {
          BlocProvider.of<AuthBloc>(context).add(CheckLoginStatus());
          AppNavigation.pushAndRemoveUntilNavigation(
              context, const HomePageWidget());
        }
      },
      child: BlocListener<AuthBloc, AuthBlocState>(
        listener: (context, state) {
          if (state is UserLogedIn) {
            BlocProvider.of<UserBloc>(context).add(const GetUser());
          }
          if (state is UserNotLogedIn) {
            AppNavigation.pushAndRemoveUntilNavigation(
                context, const ThreeOptionsPage());
          }
        },
        child: BlocListener<UserBloc, UserState>(
          listener: (context, state) {
            if (state is GetUserSuccess) {
              AppNavigation.pushAndRemoveUntilNavigation(
                  context, const HomePageWidget());
            } else if (state is GetUserSuccess) {
              const Duration(seconds: 4);
              AppNavigation.pushAndRemoveUntilNavigation(
                  context, const HomePageWidget());
            }
          },
          child: SafeArea(
            child: Scaffold(
              key: Utils.messengerKey,
              body: SizedBox(
                width: width,
                height: height,
                child: Stack(
                  children: [
                    Positioned(
                      right: 0,
                      left: 0,
                      child: Image.asset(
                        'assets/images/splash_screen_img.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        sbox20,
                        const Padding(
                          padding: EdgeInsets.all(padding20),
                          child: Text(
                            'Discover, Connect & Hire',
                            style: TextStyle(color: colorwhite, fontSize: 40),
                          ),
                        ),
                        const Spacer(),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: padding20),
                          child: Text(
                            'Megmo',
                            style: TextStyle(
                                color: colorwhite,
                                fontSize: 40,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(padding20),
                          child: Text(
                            'Meeting Demants,By Empowering Talent',
                            style: TextStyle(color: colorwhite, fontSize: 25),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.symmetric(horizontal: padding20),
                          child: Row(
                            children: [
                              _buildActionButton(
                                  'Find a service',
                                  width,
                                  'assets/images/find_service.png',
                                  context,
                                  const AuthValidationPage()),
                              _buildActionButton(
                                  'Become a Partner',
                                  width,
                                  'assets/images/becomepartner.png',
                                  context,
                                  const BecomeAPartner())
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildActionButton(String text, double width, String image,
      BuildContext context, Widget widget) {
    return GestureDetector(
      onTap: () {
        AppNavigation.pushNavigation(context, widget);
      },
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: width * 0.4,
              height: width * 0.4,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: const Color(0x60000000),
              ),
            ),
          ),
          Positioned(
            bottom: 10,
            left: 10,
            right: 10,
            child: Container(
              width: width * 0.4,
              height: width * 0.1,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: const Color(0x60000000),
              ),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  text,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 50,
            right: 10,
            left: 10,
            child: Image.asset(
              image,
              width: 90,
              height: 90,
            ),
          ),
        ],
      ),
    );
  }
}
