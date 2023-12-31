import 'package:buangin/constants.dart';
import 'package:buangin/src/features/authentication/screens/jualin_page/jualin_page.dart';
import 'package:flutter/material.dart';

class JualinLandingPage extends StatelessWidget {
  const JualinLandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 80),
        child: Column(children: [
          Align(
            alignment: Alignment.center,
            child: Image.asset(
              'assets/images/Logo_Buangin.png',
              width: 60,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 60),
            child: Align(
              alignment: Alignment.center,
              child: Image.asset(
                'assets/images/Ilustrasi_Jualin.png',
                width: 220,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 50),
            width: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Jualin',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: kThirdColor,
                    decoration: TextDecoration.none,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  child: const Text(
                    'Punya banyak perabotan bekas, tapi sayang kalau dibuang? Lebih baik di Jualin aja',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: kThirdColor,
                      decoration: TextDecoration.none,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 300,
            height: 50,
            margin: const EdgeInsets.only(top: 100),
            child: OutlinedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return const JualinPage();
                    },
                  ),
                );
              },
              style: OutlinedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                side: const BorderSide(color: kThirdColor, width: 2), // Specify the border color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text(
                'Mulai',
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
          )
        ]),
      ),
    );
  }
}
