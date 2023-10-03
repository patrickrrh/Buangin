import 'package:buangin/constants.dart';
import 'package:buangin/src/features/authentication/controllers/register/register_controller.dart';
import 'package:buangin/src/features/authentication/models/user_model.dart';
import 'package:buangin/src/features/authentication/screens/home_page/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(RegisterController());
    final formKey = GlobalKey<FormState>();

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(30),
          margin: const EdgeInsets.only(top: 100),
          child: Column(
            children: [
              Align(
                alignment: Alignment.center,
                child: Image.asset(
                  'assets/images/Buat_Akun.png',
                  width: 200,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 30),
                child: const Text(
                  'Buat Akun',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: kThirdColor,
                    decoration: TextDecoration.none,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 40),
                child: Form(
                  key: formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFormField(
                        controller: controller.username,
                        decoration: const InputDecoration(
                          labelText: 'Nama pengguna',
                          prefixIcon: Icon(
                            Icons.person_outline_rounded,
                            color: kThirdColor,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 2, color: kThirdColor),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Nama pengguna harus diisi';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        controller: controller.email,
                        decoration: const InputDecoration(
                          labelText: 'Email',
                          prefixIcon: Icon(
                            Icons.email,
                            color: kThirdColor,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 2, color: kThirdColor),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Email must not be empty';
                          }

                          // Regular expression for a simple email format validation
                          final emailRegExp =
                              RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$');

                          if (!emailRegExp.hasMatch(value)) {
                            return 'Invalid email format';
                          }

                          return null;
                        },
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        controller: controller.password,
                        obscureText: true,
                        decoration: const InputDecoration(
                          labelText: 'Password',
                          prefixIcon: Icon(
                            Icons.password,
                            color: kThirdColor,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 2, color: kThirdColor),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Password harus diisi';
                          }
                          // Add more password validation logic here if needed
                          return null;
                        },
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        controller: controller.nomorTelepon,
                        decoration: const InputDecoration(
                          labelText: 'Nomor telepon',
                          prefixIcon: Icon(
                            Icons.call,
                            color: kThirdColor,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 2, color: kThirdColor),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Nomor telepon harus diisi';
                          }

                          // Remove any non-digit characters from the input
                          final cleanedValue =
                              value.replaceAll(RegExp(r'[^\d]'), '');

                          // Check if the cleaned value is a valid phone number
                          if (cleanedValue.length < 10 ||
                              cleanedValue.length > 15) {
                            return 'Nomor telepon tidak valid';
                          }

                          return null;
                        },
                      ),
                      const SizedBox(height: 30),
                      SizedBox(
                        height: 50,
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              // Create a UserModel instance.
                              final user = UserModel(
                                email: controller.email.text.trim(),
                                password: controller.password.text.trim(),
                                fullName: controller.username.text.trim(),
                                phoneNumber:
                                    controller.nomorTelepon.text.trim(),
                              );

                              // Register the user using the RegisterController instance.
                              RegisterController.instance.createUser(user);
                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomePage()));
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 20),
                            backgroundColor: kSecondaryColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          child: const Text(
                            'Daftar',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: kPrimaryColor,
                              // Set the text color to match the border color
                              decoration: TextDecoration.none,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
