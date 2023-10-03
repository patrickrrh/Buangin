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
          child: Column(children: [
            Align(
                alignment: Alignment.center,
                child: Image.asset(
                  'assets/images/Buat_Akun.png',
                  width: 200,
                )),
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
                          label: Text('Nama pengguna',
                              style: TextStyle(
                                  color: kThirdColor,
                                  fontFamily: 'Poppins',
                                  fontSize: 14)),
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(
                            Icons.person_outline_rounded,
                            color: kThirdColor,
                          ),
                          labelStyle: TextStyle(color: kThirdColor),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 2, color: kThirdColor))),
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      controller: controller.email,
                      decoration: const InputDecoration(
                          label: Text('Email',
                              style: TextStyle(
                                  color: kThirdColor,
                                  fontFamily: 'Poppins',
                                  fontSize: 14)),
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(
                            Icons.email,
                            color: kThirdColor,
                          ),
                          labelStyle: TextStyle(color: kThirdColor),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 2, color: kThirdColor))),
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      controller: controller.password,
                      decoration: const InputDecoration(
                          label: Text('Password',
                              style: TextStyle(
                                  color: kThirdColor,
                                  fontFamily: 'Poppins',
                                  fontSize: 14)),
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(
                            Icons.password,
                            color: kThirdColor,
                          ),
                          labelStyle: TextStyle(color: kThirdColor),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 2, color: kThirdColor))),
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      controller: controller.nomorTelepon,
                      decoration: const InputDecoration(
                          label: Text('Nomor telepon',
                              style: TextStyle(
                                  color: kThirdColor,
                                  fontFamily: 'Poppins',
                                  fontSize: 14)),
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(
                            Icons.call,
                            color: kThirdColor,
                          ),
                          labelStyle: TextStyle(color: kThirdColor),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 2, color: kThirdColor))),
                    ),
                    const SizedBox(height: 30),
                    SizedBox(
                      height: 50,
                      width: double.infinity,
child: ElevatedButton(
  onPressed: () {
    if (formKey.currentState!.validate()) {
      // You validate the form fields here.

      // Then, you create a UserModel instance.
      final user = UserModel(
        email: controller.email.text.trim(),
        password: controller.password.text.trim(),
      );

      // Now, you should register the user using the RegisterController instance.
      RegisterController.instance.registerUser(user).then((success) {
        if (success) {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (BuildContext context) {
                return const HomePage();
              },
            ),
          );
        } else {
          // Handle registration failure by displaying a snackbar.
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Registration failed. Please try again.'),
              backgroundColor: Colors.red,
            ),
          );
        }
      });
    }
  },
  style: ElevatedButton.styleFrom(
    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
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

                    )
                  ],
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
