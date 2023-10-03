import 'package:buangin/src/exceptions/register_email_password_failure.dart';
import 'package:buangin/src/features/authentication/screens/home_page/home_page.dart';
import 'package:buangin/src/features/authentication/screens/landing_page/landing_page.dart';
import 'package:buangin/src/features/authentication/screens/register_page/register_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';

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

Future<bool> createUserWithEmailAndPassword(String email, String password) async {
  if (email.isEmpty || password.isEmpty) {
    // Show a snackbar message to inform the user that email and password cannot be empty.
    Get.snackbar(
      'Error',
      'Email and password cannot be empty.',
      backgroundColor: Colors.red,
      snackPosition: SnackPosition.BOTTOM,
    );
    return false; // Exit the function and indicate registration failure.
  }

  try {
    await _auth.createUserWithEmailAndPassword(email: email, password: password);

    // Check if user creation was successful.
    if (_auth.currentUser != null) {
      Get.offAll(() => const HomePage());
      return true; // Indicate registration success.
    } else {
      // Show a snackbar message if user creation failed.
      Get.snackbar(
        'Error',
        'User registration failed. Please try again.',
        backgroundColor: Colors.red,
        snackPosition: SnackPosition.BOTTOM,
      );

      // Navigate to the registration page when user creation fails.
      Get.to(() => const RegisterPage());
      return false; // Indicate registration failure.
    }
  } on FirebaseAuthException catch (e) {
    final ex = RegisterWithEmailAndPasswordFailure.code(e.code);
    // Show a snackbar message with the Firebase authentication error message.
    Get.snackbar(
      'Error',
      'FIREBASE AUTH EXCEPTION - ${ex.message}',
      backgroundColor: Colors.red,
      snackPosition: SnackPosition.BOTTOM,
    );

    // Navigate to the registration page when Firebase authentication fails.
    Get.to(() => const RegisterPage());
    return false; // Indicate registration failure.
  } catch (_) {
    const ex = RegisterWithEmailAndPasswordFailure();
    // Show a snackbar message for other exceptions.
    Get.snackbar(
      'Error',
      'EXCEPTION - ${ex.message}',
      backgroundColor: Colors.red,
      snackPosition: SnackPosition.BOTTOM,
    );

    // Navigate to the registration page when other exceptions occur.
    Get.to(() => const RegisterPage());
    return false; // Indicate registration failure.
  }
}






  void loginUserWithEmailAndPassword(String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch(e){

    }
    catch(_){}
  }

  Future<void> lougout() async => await _auth.signOut();
    
}
