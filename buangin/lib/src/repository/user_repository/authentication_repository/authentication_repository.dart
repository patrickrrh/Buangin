import 'package:buangin/src/exceptions/register_email_password_failure.dart';
import 'package:buangin/src/features/authentication/screens/home_page/home_page.dart';
import 'package:buangin/src/features/authentication/screens/landing_page/landing_page.dart';
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

  void createUserWithEmailAndPassword(String email, String password) async {
    try {
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
          firebaseUser.value != null ? Get.offAll(() => const HomePage()) : Get.to(() => const LandingPage());
    } on FirebaseAuthException catch(e) {
      final ex = RegisterWithEmailAndPasswordFailure.code(e.code);
      throw ex;
    }
    catch(_){
      const ex = RegisterWithEmailAndPasswordFailure();
      throw ex;
    }
  }

  void loginUserWithEmailAndPassword(String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(
          email: email, password: password);
    }
    catch(_){}
  }

  Future<void> lougout() async => await _auth.signOut();
    
}
