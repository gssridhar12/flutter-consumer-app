import 'dart:developer';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_consumer_app/core/error/failures.dart';
import 'package:flutter_consumer_app/features/auth_section/domain/entities/request/login_request.dart';
import 'package:flutter_consumer_app/features/auth_section/domain/entities/request/sign_up_request.dart';
import 'package:flutter_consumer_app/features/auth_section/domain/entities/response/auth_entity.dart';
import 'package:flutter_consumer_app/features/auth_section/domain/usecases/login_with_api_usecase.dart';
import 'package:flutter_consumer_app/features/auth_section/domain/usecases/sign_up_api_usecase.dart';
import 'package:flutter_consumer_app/features/auth_section/services/firebase_auth_service.dart';
import 'package:flutter_consumer_app/main.dart';
import 'package:flutter_consumer_app/utils/snack_bar.dart';
import 'package:meta/meta.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:shared_preferences/shared_preferences.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthBlocEvent, AuthBlocState> {
  final LoginApiUseCase loginApiUseCase;
  final SignUpApiUseCase signUpApiUseCase;
  AuthBloc({required this.signUpApiUseCase, required this.loginApiUseCase})
      : super(AuthBlocInitial()) {
    on<LoginToAccount>(
      (event, emit) async {
        final SharedPreferences prefs = await SharedPreferences.getInstance();

        emit(LoginAuthLoading());
        var auth = await loginApiUseCase.execute(
            loginRequest: LogInRequest(
                email: event.emailOrPhoneNumber,
                phoneNumber: event.emailOrPhoneNumber,
                password: event.password));
        auth.fold(
          (left) {
            if (left is ServerFailure) {
              emit(LoginAuthFailed(message: left.errorMessage));
            }
          },
          (right) {
            if (right.successStatus == true) {
              prefs.setString('id', right.data.userUuid);
              localDb.setString('fullName', right.data.fullName);
              localDb.setBool('isGuestUser', false);
              emit(LoginAuthSuccess(authModel: right));
            } else {
              emit(LoginAuthFailed(message: right.message));
            }
          },
        );
      },
    );
    on<CreateAccountwithAuth>(
      (event, emit) async {
        final SharedPreferences prefs = await SharedPreferences.getInstance();

        emit(LoginAuthLoading());
        var auth = await signUpApiUseCase.execute(
            signUpRequst: SignUpRequest(
                fullName: event.fullName,
                email: event.emailOrPhoneNumber,
                phoneNumber: event.emailOrPhoneNumber,
                password: event.password));
        auth.fold(
          (left) {
            if (left is ServerFailure) {
              emit(SignUpAuthFailed(message: left.errorMessage));
            }
          },
          (right) {
            if (right.successStatus == true) {
              prefs.setString('id', right.data.userUuid);
              localDb.setString('fullName', right.data.fullName);
              localDb.setBool('isGuestUser', false);
              emit(SignUpAuthSuccess(authEntity: right));
            } else {
              emit(SignUpAuthFailed(message: right.message));
            }
          },
        );
      },
    );
    on<CheckLoginStatus>((event, emit) async {
      emit(LoginStatusLoading());
      final SharedPreferences prefs = await SharedPreferences.getInstance();

      if (prefs.getString('id') != null) {
        localDb.setBool('isGuestUser', false);

        emit(UserLogedIn());
        log('user logged in');
      } else {
        emit(UserNotLogedIn());
        localDb.setBool('isGuestUser', true);

        log('user not logged in');
      }
      // if (firebase.firebaseAuth.currentUser!.uid.isNotEmpty) {
      //   emit(UserLogedIn());
      //   log('google  logged in');
      // } else {
      //   emit(UserNotLogedIn());
      //   log('google not logged in');
      // }
    });
    on<LoginWithGoogleAuth>(
      (event, emit) async {
        log('LoginWithGoogleAuth');
        emit(GoogleAuthLoading());
        // final SharedPreferences prefs = await SharedPreferences.getInstance();
        final firebase = FirebaseAuthentication();

        try {
          UserCredential? userCredential = await firebase.loginWithGoogle();
          if (userCredential != null) {
            log('Google Auth Success');

            emit(GoogleAuthSuccess(userCredential: userCredential));
          } else {
            emit(GoogleAuthFailed());
          }
        } catch (e) {
          Utils.showSnackbar('Google Auth Failed');
          log('Google Auth Failed: UserCredential is null');

          emit(GoogleAuthFailed());
        }
      },
    );
    //     on<LoginWithGoogleAuth>((event, emit) async {
    //   log('LoginWithGoogleAuth');
    //   emit(GoogleAuthLoading());
    //   // final SharedPreferences prefs = await SharedPreferences.getInstance();
    //   final firebase = FirebaseAuthentication();

    //   try {
    //     UserCredential? userCredential = await firebase.loginWithGoogle();

    //     emit(GoogleAuthSuccess(userCredential: userCredential!));
    //   } catch (e) {
    //     emit(GoogleAuthFailed());
    //   }
    // });
  }
}
