import 'package:flutter/material.dart';
import 'package:flutter_consumer_app/core/colors/colors.dart';
import 'package:flutter_consumer_app/core/constant/constant.dart';
import 'package:flutter_consumer_app/features/auth_section/presentation/pages/choose_services.dart';
import 'package:flutter_consumer_app/features/auth_section/presentation/widgets/appbar_widget.dart';
import 'package:flutter_consumer_app/features/auth_section/presentation/widgets/button_widget.dart';
import 'package:flutter_consumer_app/features/auth_section/presentation/widgets/text_and_subtitle_widget.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/pages/home_page.dart';
import 'package:flutter_consumer_app/shared/widgets/colored_safearea.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class LogIntoExistingAccountSMSPage extends StatelessWidget {
  const LogIntoExistingAccountSMSPage({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

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
                  titile: 'We sent you an OTP',
                  subtitle: 'Check your messages'),
              OtpTextField(
                numberOfFields: 6,
                borderColor: colorblack,

                //set to true to show as box or false to show as dash
                showFieldAsBox: true,
                //runs when a code is typed in
                onCodeChanged: (String code) {
                  //handle validation or checks here
                },
                //runs when every textfield is filled
                onSubmit: (String verificationCode) {
                  // showDialog(
                  //     context: context,
                  //     builder: (context) {
                  //       return AlertDialog(
                  //         title: const Text("Verification Code"),
                  //         content: Text('Code entered is $verificationCode'),
                  //       );
                  //     });
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ChooseService(),
                      ));
                }, // end onSubmit
              ),
              sbox20,
              ButtonWidget(
                text: 'Continue',
                navigation: const HomePage(
                  
                ),
                width: width,
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(padding),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ChooseService(),
                          ));
                    },
                    child: const Text(
                      'Resent OTP',
                      style: TextStyle(
                          color: colorred,
                          decoration: TextDecoration.underline),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
