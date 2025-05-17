import 'package:flutter/material.dart';
import 'package:flutter_consumer_app/core/colors/colors.dart';
import 'package:flutter_consumer_app/core/constant/constant.dart';
import 'package:flutter_consumer_app/features/auth_section/presentation/pages/choose_location.dart';
import 'package:flutter_consumer_app/features/auth_section/presentation/pages/create_account.dart';
import 'package:flutter_consumer_app/features/auth_section/presentation/pages/log_into_existing_account.dart';
import 'package:flutter_consumer_app/features/auth_section/presentation/widgets/appbar_widget.dart';
import 'package:flutter_consumer_app/features/auth_section/presentation/widgets/button_widget.dart';
import 'package:flutter_consumer_app/features/auth_section/presentation/widgets/divider_widget.dart';
import 'package:flutter_consumer_app/features/auth_section/presentation/widgets/text_and_subtitle_widget.dart';
import 'package:flutter_consumer_app/shared/widgets/colored_safearea.dart';

class ThreeOptionsPage extends StatelessWidget {
  const ThreeOptionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    // final height = MediaQuery.of(context).size.width;
    return ColoredSafeArea(
      color: bggray,
      child: Scaffold(
        appBar: const PreferredSize(
            preferredSize: Size.fromHeight(70), child: AppBarWidget()),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: padding20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TitleAndSubtitleWidget(
                titile: 'Join Wigglypet',
                subtitle:
                    'Create an account and discover thousands of relevant services, connect with creative professionals, discuss your requirements, and book their services',
              ),
              ButtonWidget(
                  buttonColor: colorblack,
                  width: width,
                  text: 'Create an account',
                  navigation: const CreateAccountPage(),
                  color: colorgrey),
              ButtonWidget(
                  buttonColor: colorblack,
                  width: width,
                  text: 'I already have an account',
                  navigation: LogIntoExistingAccountPage(),
                  color: colorgrey),
              sbox,
              const DividerWidget(text: 'or'),
              sbox,
              ButtonWidget(
                width: width,
                text: 'I’ll create / log into my account later',
                navigation: const ChooseLocationPage(),
                isPushreplacement: false,
              ),
              const Spacer(),
              const Center(
                  child: Padding(
                padding: EdgeInsets.all(padding),
                child: Text(
                    'By signing up, you agree to Wigglypet’s Terms of service'),
              ))

              //        Center(
              //   child: Padding(
              // padding: const EdgeInsets.all(padding20),
              // child: RichText(
              //     text: TextSpan(
              //         text:
              //             'By signing up, you agree to Wigglypet s Terms of service',
              //         style: DefaultTextStyle.of(context).style,
              //         children: const [
              //       TextSpan(
              //           text: 'bold',
              //           style: TextStyle(fontWeight: FontWeight.bold)),
              //     ])),
              // ))
            ],
          ),
        ),
      ),
    );
  }
}
