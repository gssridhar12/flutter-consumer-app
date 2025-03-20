import 'package:flutter/material.dart';
import 'package:flutter_consumer_app/core/colors/colors.dart';
import 'package:flutter_consumer_app/core/constant/constant.dart';
import 'package:flutter_consumer_app/features/auth_section/presentation/pages/log_into_existing_account_sms.dart';
import 'package:flutter_consumer_app/features/auth_section/presentation/widgets/appbar_widget.dart';
import 'package:flutter_consumer_app/features/auth_section/presentation/widgets/button_widget.dart';
import 'package:flutter_consumer_app/features/auth_section/presentation/widgets/text_and_subtitle_widget.dart';
import 'package:flutter_consumer_app/features/auth_section/presentation/widgets/text_field_widget.dart';
import 'package:flutter_consumer_app/shared/widgets/colored_safearea.dart';

class CreateAccountOtp extends StatelessWidget {
  const CreateAccountOtp({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return ColoredSafeArea(
      color: bggray,
      child: Scaffold(
        appBar: const PreferredSize(
            preferredSize: Size.fromHeight(70), child: AppBarWidget()),
        body: SingleChildScrollView(
          child: Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: padding20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const TitleAndSubtitleWidget(
                      titile: 'We need to verify your account',
                      subtitle:
                          'Please enter either your email or phone number'),
                  sbox20,
                  const TextFieldWidget(
                    labelText: 'Email',
                    textInputAction: TextInputAction.done,
                    textInputType: TextInputType.emailAddress,
                    autofillHints: [AutofillHints.email],
                  ),
                  sbox,
                  const TextFieldWidget(
                    textInputAction: TextInputAction.done,
                    textInputType: TextInputType.number,
                    labelText: 'Mobile Number',
                    autofillHints: [AutofillHints.telephoneNumberNational],
                  ),
                  sbox,

                  sbox20,
                  ButtonWidget(
                    text: 'Send OTP',
                    navigation: const LogIntoExistingAccountSMSPage(),
                    width: width,
                  ),
                  sbox20,

                  sbox20,

                  sbox20,
                  GestureDetector(
                    onTap: () {},
                    child: const Center(
                      child: Text(
                        "I will create my account later",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: colorblack,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ),
                  sbox20,
                  Center(
                    child: RichText(
                      text: const TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                            text: 'By signing up, you agree to Megmo ',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 13,
                                fontWeight:
                                    FontWeight.bold // Customize the text color
                                ),
                          ),
                          TextSpan(
                            text: 'Terms of service',
                            style: TextStyle(
                              color: Colors.black, // Customize the text color
                              decoration: TextDecoration.underline,
                              fontSize: 13, // Add underline decoration
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // Row(
                  //   children: [
                  //     const Spacer(),
                  //     Padding(
                  //       padding: const EdgeInsets.all(padding),
                  //       child: GestureDetector(
                  //         onTap: () {
                  //           Navigator.push(
                  //               context,
                  //               MaterialPageRoute(
                  //                 builder: (context) => const MyAccountPage2(),
                  //               ));
                  //         },
                  //       ),
                  //     ),
                  //   ],
                  // ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
