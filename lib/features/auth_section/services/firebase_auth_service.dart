// ignore_for_file: body_might_complete_normally_catch_error

import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_consumer_app/main.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shared_preferences/shared_preferences.dart';

///For firebase authentication service
class FirebaseAuthentication {
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  late SharedPreferences prefs;

  Stream<User?> get getGoogleAuthStatus => firebaseAuth.authStateChanges();

  ///Firebase Login with Firebase Auth service
  ///
  ///this function calls the [LoginWithPhoneNumber] and add to backend database
  Future<UserCredential?> loginWithGoogle() async {
    try {
      final googleSignIn = GoogleSignIn();

      final googleUser = await googleSignIn.signIn().catchError((onError) {
        log(onError);
      });
      // if (googleUser == null) return;

      final googleAuth = await googleUser!.authentication;
      final credential = GoogleAuthProvider.credential(
          accessToken: googleAuth.accessToken, idToken: googleAuth.idToken);

      final data = await FirebaseAuth.instance.signInWithCredential(credential);
      log(data.user.toString());
      return data;
      // await localDb.setString('googleUid', data.user!.uid);
      // navigatorKey.currentState!.popUntil((route) => route.isFirst);

      //there might be platform execption thrown when cancelling the flow ,it fixes itself when running in production
    } on FirebaseAuthException catch (e) {
      throw Exception(e.message);
    }
  }

  ///Logout function for Google auth
  static Future<void> logoutWithGoogle() async {
    try {
      final googleSignIn = GoogleSignIn();
      await localDb.remove('googleUid');

      await googleSignIn.disconnect();
      FirebaseAuth.instance.signOut();
    } catch (e) {
      log(e.toString());
    }
  }
}
