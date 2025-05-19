// ignore_for_file: void_checks

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_consumer_app/core/colors/colors.dart';
import 'package:flutter_consumer_app/core/constant/constant.dart';
import 'package:flutter_consumer_app/features/auth_section/domain/usecases/login_with_api_usecase.dart';
import 'package:flutter_consumer_app/features/auth_section/domain/usecases/sign_up_api_usecase.dart';
import 'package:flutter_consumer_app/features/auth_section/presentation/bloc/auth_bloc.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/pages/home_page.dart';
import 'package:flutter_consumer_app/utils/navigation.dart';
import 'package:flutter_consumer_app/utils/snack_bar.dart';
import 'package:get_it/get_it.dart';
import 'package:sizer/sizer.dart';

///this widget is for the three buttons for login with social media

class SocialLinksWidget extends StatefulWidget {
  const SocialLinksWidget({
    super.key,
  });

  @override
  State<SocialLinksWidget> createState() => _SocialLinksWidgetState();
}

class _SocialLinksWidgetState extends State<SocialLinksWidget> {
  late SignUpApiUseCase signUpApiUseCase;
  late LoginApiUseCase loginApiUseCase;
  late AuthBloc authBloc;

  @override
  void initState() {
    signUpApiUseCase = GetIt.instance<SignUpApiUseCase>();
    loginApiUseCase = GetIt.instance<LoginApiUseCase>();
    authBloc = AuthBloc(
        signUpApiUseCase: signUpApiUseCase, loginApiUseCase: loginApiUseCase);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthBlocState>(
      listener: (context, state) {
        if (state is GoogleAuthSuccess) {
          final User user = state.userCredential.user!;

          if (state.userCredential.additionalUserInfo!.isNewUser) {
            context.read<AuthBloc>().add(CreateAccountwithAuth(
                fullName: user.displayName!,
                emailOrPhoneNumber: user.email!,
                password: user.email!));
          } else if (!state.userCredential.additionalUserInfo!.isNewUser) {
            context.read<AuthBloc>().add(LoginToAccount(
                emailOrPhoneNumber: user.email!, password: user.email!));
          }
        } else if (state is LoginAuthSuccess) {
          // Navigates to home page after successful login

          AppNavigation.pushAndRemoveUntilNavigation(context, const HomePage());
        } else if (state is SignUpAuthSuccess) {
          // Navigates to home page after successful sign up

          AppNavigation.pushAndRemoveUntilNavigation(context, const HomePage());
        } else if (state is LoginAuthFailed) {
          Utils.showSnackbar(state.message);
        } else if (state is SignUpAuthFailed) {
          Utils.showSnackbar(state.message);
        } else if (state is GoogleAuthFailed) {
          Utils.showSnackbar('Google Auth Failed');
        } else if (state is GoogleAuthLoading) {
          // Handle loading state if needed
        }
      },
      child: Padding(
        padding: const EdgeInsets.all(padding),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                context.read<AuthBloc>().add(LoginWithGoogleAuth());
              },
              child: Container(
                width: 8.h,
                height: 7.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: colorblack.withOpacity(0.5)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Image.asset('assets/images/google.png'),
                ),
              ),
            ),
            //  sboxW,
            // Container(
            //   width: 8.h,
            //   height: 7.h,
            //   decoration: BoxDecoration(
            //     borderRadius: BorderRadius.circular(12),
            //     border: Border.all(color: colorblack.withOpacity(0.5)),
            //   ),
            //   child: Padding(
            //     padding: const EdgeInsets.all(15.0),
            //     child: Image.asset(
            //       'assets/images/apple.png',
            //       fit: BoxFit.contain,
            //     ),
            //   ),
            // ),
            // sboxW,
            // Container(
              // width: 8.h,
              // height: 7.h,
              // decoration: BoxDecoration(
              //   borderRadius: BorderRadius.circular(12),
              //   border: Border.all(color: colorblack.withOpacity(0.5)),
              // ),
              // child: Padding(
              //   padding: const EdgeInsets.all(15.0),
              //   child: Image.asset(
              //     'assets/images/facebook.png',
              //     width: 30,
              //   ),
              // ),
            // ),
          ],
        ),
      ),
    );
  }
}
