import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_consumer_app/core/colors/colors.dart';
import 'package:flutter_consumer_app/core/constant/constant.dart';
import 'package:flutter_consumer_app/features/auth_section/presentation/bloc/auth_bloc.dart';
import 'package:flutter_consumer_app/features/auth_section/presentation/cubit/button_cubit/button_cubit.dart';
import 'package:flutter_consumer_app/features/auth_section/presentation/cubit/button_cubit/button_state.dart';
import 'package:flutter_consumer_app/features/auth_section/presentation/pages/choose_services.dart';
import 'package:flutter_consumer_app/features/auth_section/presentation/pages/forgot_password.dart';
import 'package:flutter_consumer_app/features/auth_section/presentation/widgets/appbar_widget.dart';
import 'package:flutter_consumer_app/features/auth_section/presentation/widgets/button_widget.dart';
import 'package:flutter_consumer_app/features/auth_section/presentation/widgets/divider_widget.dart';
import 'package:flutter_consumer_app/features/auth_section/presentation/widgets/social_links_widget.dart';
import 'package:flutter_consumer_app/features/auth_section/presentation/widgets/text_and_subtitle_widget.dart';
import 'package:flutter_consumer_app/features/auth_section/presentation/widgets/text_field_widget.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/pages/home_page.dart';
import 'package:flutter_consumer_app/shared/validation/textfield_validation.dart';
import 'package:flutter_consumer_app/shared/widgets/colored_safearea.dart';
import 'package:flutter_consumer_app/utils/snack_bar.dart';

import 'package:sizer/sizer.dart';

// ignore: must_be_immutable
class LogIntoExistingAccountPage extends StatelessWidget {
  LogIntoExistingAccountPage({super.key, this.loadingScreen = false});

  /// This variable will decide wather to show login form or loading screen
  bool loadingScreen;

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  bool isValidated = false;

  @override
  Widget build(BuildContext context) {
    return ColoredSafeArea(
      color: bggray,
      child: Scaffold(
        appBar: const PreferredSize(
            preferredSize: Size.fromHeight(70), child: AppBarWidget()),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: padding20),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: BlocListener<AuthBloc, AuthBlocState>(
                listener: (context, state) {
                  if (state is LoginAuthLoading) {
                    BlocProvider.of<ButtonCubit>(context)
                        .setLoading(ButtonStatus.loading);
                  } else if (state is LoginAuthFailed) {
                    BlocProvider.of<ButtonCubit>(context)
                        .setLoading(ButtonStatus.error);
                    Utils.showSnackbar(state.message);
                  } else if (state is LoginAuthSuccess) {
                    BlocProvider.of<ButtonCubit>(context)
                        .setLoading(ButtonStatus.idle);
                    if (state.authModel.successStatus == true) {
                      Utils.showSnackbar(
                          'Account logged in with ${state.authModel.data.email}');

                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomePage(),
                        ),
                      );
                    }
                  }
                },
                child: loadingScreen != true
                    ? Form(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        key: formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const TitleAndSubtitleWidget(
                                titile: 'I already have an account',
                                subtitle:
                                    'Please enter your registered email and password.'),
                            sbox20,
                            TextFieldWidget(
                                labelText: 'Email or PhoneNumber',
                                textInputAction: TextInputAction.next,
                                textInputType: TextInputType.emailAddress,
                                textEditingController: emailController,
                                autofillHints: const [
                                  AutofillHints.email,
                                  AutofillHints.telephoneNumberLocal
                                ],
                                onEditingComplete: () =>
                                    FocusScope.of(context).nextFocus(),
                                onChanged: (string) {
                                  isValidated =
                                      formKey.currentState!.validate();
                                  BlocProvider.of<ButtonCubit>(context)
                                      .validateTextfield(isValidated);
                                },
                                validator: (email) {
                                  if (!TextfieldValidation.isEmail(email!) &&
                                      !TextfieldValidation.isPhone(email)) {
                                    return 'Please enter a valid email or phone number';
                                  }
                                  return null;
                                }),
                            sbox,
                            TextFieldWidget(
                              validator: (value) {
                                if (value != null && value.length < 7) {
                                  return 'password min 7 characters';
                                } else {
                                  return null;
                                }
                              },
                              onChanged: (string) {
                                isValidated = formKey.currentState!.validate();
                                BlocProvider.of<ButtonCubit>(context)
                                    .validateTextfield(isValidated);
                              },
                              onEditingComplete: () =>
                                  FocusScope.of(context).unfocus(),
                              obscureText: true,
                              labelText: 'Megmo Passowrd',
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.visiblePassword,
                              textEditingController: passwordController,
                              autofillHints: const [AutofillHints.password],
                            ),
                            sbox20,
                            BlocBuilder<ButtonCubit, ButtonState>(
                              builder: (context, state) {
                                return ButtonWidget(
                                  text: 'Continue',
                                  width: 100.w,
                                  formKey: formKey,
                                  buttonStatus: state.buttonStatus,
                                  color: (state is ButtonValidated &&
                                          state.isValidated)
                                      ? colorred
                                      : colorgrey,
                                  onPressed: () {
                                    if (state is ButtonValidated &&
                                        state.isValidated) {
                                      BlocProvider.of<AuthBloc>(context).add(
                                          LoginToAccount(
                                              emailOrPhoneNumber:
                                                  emailController.text,
                                              password:
                                                  passwordController.text));
                                    } else {
                                      null;
                                    }
                                  },
                                );
                              },
                            ),
                            Row(
                              children: [
                                const Spacer(),
                                Padding(
                                  padding: const EdgeInsets.all(padding),
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                ForgotPasswordPage(),
                                          ));
                                    },
                                    child: const Text(
                                      'Forgot Password?',
                                      style: TextStyle(
                                          color: colorred,
                                          decoration: TextDecoration.underline),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const DividerWidget(
                              text: 'Or via OTP',
                            ),
                            sbox20,
                            const TextFieldWidget(
                              labelText: 'Mobile number',
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.number,
                              autofillHints: [
                                AutofillHints.telephoneNumberNational
                              ],
                            ),
                            sbox20,
                            Center(
                              child: ButtonWidget(
                                text: 'Sent OTP',
                                navigation: const ChooseService(),
                                width: 40.w,
                              ),
                            ),
                            sbox20,
                            const DividerWidget(text: 'Or via social networks'),
                            const SocialLinksWidget(),
                            Center(
                              child: Padding(
                                padding: const EdgeInsets.all(padding),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const HomePage(),
                                      ),
                                    );
                                  },
                                  child: const Text(
                                    'I will log into my account later',
                                    style: TextStyle(
                                        color: colorred,
                                        decoration: TextDecoration.underline),
                                  ),
                                ),
                              ),
                            ),
                            sbox20,
                            const Center(
                              child: Text(
                                //TODO add rich text to terms and service
                                'By signing up, you agree to Megmo’s Terms of service',
                                style: TextStyle(
                                    color: colorblack,
                                    decoration: TextDecoration.underline),
                              ),
                            ),
                          ],
                        ),
                      )
                    : const SizedBox(
                        height: double.infinity,
                        child: Center(
                          child: CircularProgressIndicator(),
                        ),
                      )),
          ),
        ),
      ),
    );
  }
}
