import 'package:buangin/src/exceptions/register_email_password_failure.dart';
import 'package:buangin/src/features/authentication/screens/home_page/home_page.dart';
import 'package:buangin/src/features/authentication/screens/landing_page/landing_page.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';


class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  final _auth = FirebaseAuth.instance;
  late final Rx<User?> firebaseUser;

  @override
  void onReady() {
    firebaseUser = Rx<User?>(_auth.currentUser);
    firebaseUser.bindStream(_auth.userChanges());
    ever(firebaseUser, _setInitialScreen);
  }

  _setInitialScreen(User? user) {
    user == null
        ? Get.offAll(() => const LandingPage())
        : Get.offAll(() => const HomePage());
  }

  Future<void> createUserWithEmailAndPassword(
      String email, String password) async {
    try {
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
          firebaseUser.value != null ? Get.offAll(() => const HomePage()) : Get.offAll(() => const LandingPage());
    } on FirebaseAuthException catch (e) {
      final ex = RegisterWithEmailAndPasswordFailure.code(e.code);
      print('FIREBASE AUTH EXCEPTION - ${ex.message}');
      throw ex;
    } catch (_) {
      const ex = RegisterWithEmailAndPasswordFailure();
      print('EXCEPTION - ${ex.message}');
      throw ex;
    }
  }

  Future<void> loginUserWithEmailAndPassword(
      String email, String password, BuildContext context) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      // Login successful, you can navigate to the home page or perform other actions.
      // For example, you can navigate to the home page using GetX:
      Get.offNamed('/home'); // Replace with the appropriate named route.
    } on FirebaseAuthException catch (e) {
      // Handle specific Firebase Authentication errors here, e.g., display an error message to the user.
      // final errorMessage = e.message ?? 'An error occurred during login.';
      
    } catch (error) {
      // Handle generic login errors, if any.
      // final errorMessage = 'An error occurred during login: $error';
      
    }
  }

  Future<void> logout() async => await _auth.signOut();
}
