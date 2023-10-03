import 'package:buangin/src/features/authentication/models/user_model.dart';
import 'package:buangin/src/repository/user_repository/authentication_repository/authentication_repository.dart';
import 'package:buangin/src/repository/user_repository/user_repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController{

  static RegisterController get instance => Get.find();

  final username = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();
  final nomorTelepon = TextEditingController();

  final userRepo = Get.put(UserRepository());

void registerUser(String email, String password) {
  String? error = AuthenticationRepository.instance.createUserWithEmailAndPassword(email, password) as String?;
  if(error != null){
    Get.showSnackbar(GetSnackBar(message: error.toString()));
  }
}

Future<void> createUser(UserModel user) async {
  await userRepo.createUser(user);
}


}