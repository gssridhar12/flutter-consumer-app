import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_consumer_app/core/colors/colors.dart';
import 'package:flutter_consumer_app/core/constant/constant.dart';
import 'package:flutter_consumer_app/features/auth_section/presentation/bloc/auth_bloc.dart';
import 'package:flutter_consumer_app/features/auth_section/presentation/cubit/button_cubit/button_cubit.dart';
import 'package:flutter_consumer_app/features/auth_section/presentation/cubit/button_cubit/button_state.dart';
import 'package:flutter_consumer_app/features/auth_section/presentation/widgets/appbar_widget.dart';
import 'package:flutter_consumer_app/features/auth_section/presentation/widgets/button_widget.dart';
import 'package:flutter_consumer_app/features/auth_section/presentation/widgets/text_and_subtitle_widget.dart';
import 'package:flutter_consumer_app/features/auth_section/presentation/widgets/text_field_widget.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/pages/home_page.dart';
import 'package:flutter_consumer_app/shared/validation/textfield_validation.dart';
import 'package:flutter_consumer_app/shared/widgets/colored_safearea.dart';
import 'package:flutter_consumer_app/utils/snack_bar.dart';

import 'package:sizer/sizer.dart';

// ignore: must_be_immutable
class ForgotPasswordPage extends StatelessWidget {
  ForgotPasswordPage({super.key, this.loadingScreen = false});

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
                                titile: 'Reset Your Password',
                                subtitle:
                                    'Please enter your registered email.'),
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
                                    } else {
                                      null;
                                    }
                                  },
                                );
                              },
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
