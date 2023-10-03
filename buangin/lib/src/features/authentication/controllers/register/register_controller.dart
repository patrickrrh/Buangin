import 'package:buangin/src/repository/user_repository/authentication_repository/authentication_repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController{

  static RegisterController get instance => Get.find();

  final username = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();
  final nomorTelepon = TextEditingController();

Future<bool> registerUser(String email, String password) async {
  try {
    await AuthenticationRepository.instance.createUserWithEmailAndPassword(email, password);
    // If registration is successful, return true
    return true;
  } catch (e) {
    // If registration fails, return false
    return false;
  }
}


}