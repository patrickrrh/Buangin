import 'package:buangin/src/features/authentication/models/user_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserRepository extends GetxController {
  static UserRepository get instance => Get.find();

  final _db = FirebaseFirestore.instance;

  createUser(UserModel user) async{
    await _db
        .collection("User")
        .add(user.toJson())
        .whenComplete(
          () => Get.snackbar(
            "Success",
            "Akun anda berhasil dibuat",
            snackPosition: SnackPosition.BOTTOM,
            backgroundColor: Colors.green.withOpacity(0.1),
            colorText: Colors.green,
          ),
        )
        // ignore: body_might_complete_normally_catch_error, avoid_types_as_parameter_names, non_constant_identifier_names
        .catchError((error, StackTrace) {
      Get.snackbar(
        "Error",
        "Akun anda belum dibuat",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.redAccent.withOpacity(0.1),
        colorText: Colors.red,
      );
      // ignore: avoid_print
      print(error.toString());
    });
  }
}
