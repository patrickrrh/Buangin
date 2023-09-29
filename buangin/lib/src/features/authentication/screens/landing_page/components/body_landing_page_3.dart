import "package:buangin/constants.dart";
import 'package:buangin/src/features/authentication/screens/login_page/login_page.dart';
import 'package:buangin/src/features/authentication/screens/register_page/register_page.dart';
import "package:flutter/material.dart";

class BodyLP3 extends StatelessWidget {
  const BodyLP3({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SizedBox(
        height: size.height,
        width: double.infinity,
        child: Stack(alignment: Alignment.center, children: <Widget>[
          Positioned(
            top: size.height * 0.298,
            child: Image.asset(
              'assets/images/LP3.png',
              width: size.width * 0.8,
            ),
          ),
          const Positioned(
            bottom: 300,
            child: FittedBox(
              child: SizedBox(
                width: 284, // Set the desired width here
                child: Text(
                  "Buang atau jual perabotan bekas anda dengan lebih cepat dan mudah",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: kThirdColor,
                    decoration: TextDecoration.none,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 80,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return const RegisterPage();
                        },
                      ),
                    );
                  },
                  style: OutlinedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    side: const BorderSide(
                        color: kThirdColor,
                        width: 2), // Specify the border color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text(
                    'Daftar',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color:
                          kThirdColor, // Set the text color to match the border color
                      decoration: TextDecoration.none,
                    ),
                  ),
                ),
                const SizedBox(width: 16), // Add some spacing between the buttons
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return const LoginPage();
                        },
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                        backgroundColor: kThirdColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text(
                    'Masuk',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color:
                          kPrimaryColor, // Set the text color to match the border color
                      decoration: TextDecoration.none,
                    ),
                  ),
                ),
              ],
            ),
          )

          // Positioned(
          //     bottom: 80,
          //     child: RoundedButton(
          //       key: const Key('button_login'),
          //       text: "Mulai",
          //       press: () {
          //         Navigator.push(
          //             context,
          //             MaterialPageRoute(
          //                 builder: (context) => const LoginPage()));
          //       },
          //     ))
        ]));
  }
}
