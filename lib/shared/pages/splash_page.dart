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
import 'dart:async';

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
import 'package:flutter_consumer_app/features/auth_section/presentation/pages/choose_services.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      BlocProvider.of<NetworkCubit>(context).checkConnectivity();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MultiBlocListener(
        listeners: [
          BlocListener<NetworkCubit, NetworkState>(
            listener: (context, state) {
              if (state is NetworkDisconnected) {
                Utils.showSnackbar('You are Offline');
                AppNavigation.pushNavigation(context, const NetworkPage());
              } else if (state is NetworkConnected) {
                BlocProvider.of<AuthBloc>(context).add(CheckLoginStatus());
              }
            },
          ),
          BlocListener<AuthBloc, AuthBlocState>(
            listener: (context, state) {
              if (state is UserLogedIn) {
                BlocProvider.of<UserBloc>(context).add(const GetUser());
              } else if (state is UserNotLogedIn) {
                AppNavigation.pushAndRemoveUntilNavigation(
                    context, const ChooseService());
              }
            },
          ),
          BlocListener<UserBloc, UserState>(
            listener: (context, state) {
              if (state is GetUserSuccess) {
                AppNavigation.pushAndRemoveUntilNavigation(
                    context, const HomePageWidget());
              }
            },
          ),
        ],
        child: Stack(
          fit: StackFit.expand,
          children: [
            // Background Image
            Image.asset(
              'assets/images/splash_bg.jpg',
              fit: BoxFit.cover,
            ),

            // Content Overlay
            SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 20),

                  // Logo
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Image.asset(
                      'assets/images/icons/wigglyPetlogo.png',
                      height: 40,
                    ),
                  ),

                  // Tagline
                  const Text(
                    'Simplifying Pet Care,\nEnriching Lives',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  const SizedBox(height: 60),

                  // Buttons
                  CustomButton(
                    label: 'Pet Owner',
                    backgroundColor: Colors.blue,
                    textColor: Colors.white,
                    onPressed: () {
                      AppNavigation.pushNavigation(
                          context, const AuthValidationPage());
                    },
                  ),
                  const SizedBox(height: 20),
                  CustomButton(
                    label: 'Sitter & Services',
                    backgroundColor: Colors.orange,
                    textColor: Colors.white,
                    onPressed: () {
                      AppNavigation.pushNavigation(
                          context, const BecomeAPartner());
                    },
                  ),
                  const SizedBox(height: 20),
                  CustomButton(
                    label: 'Explore',
                    backgroundColor: Colors.white,
                    textColor: Colors.blue,
                    onPressed: () {
                      AppNavigation.pushNavigation(
                          context, const HomePageWidget());
                    },
                  ),
                ],
              ),
            ),

            // Terms and Privacy
            const Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: Text.rich(
                  TextSpan(
                    text: 'By clicking signup or login, I agree to ',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 12,
                    ),
                    children: [
                      TextSpan(
                        text: 'Wigglypet ',
                        style: TextStyle(
                          color: Colors.orangeAccent,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(text: 'Terms of Service and '),
                      TextSpan(
                        text: 'Privacy Policy.',
                        style: TextStyle(
                          color: Colors.orangeAccent,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Custom Button Widget
class CustomButton extends StatelessWidget {
  final String label;
  final Color backgroundColor;
  final Color textColor;
  final VoidCallback onPressed;

  const CustomButton({
    super.key,
    required this.label,
    required this.backgroundColor,
    required this.textColor,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 260,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          foregroundColor: textColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          elevation: 4,
        ),
        onPressed: onPressed,
        child: Text(
          label,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}