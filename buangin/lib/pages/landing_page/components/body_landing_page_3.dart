import "package:buangin/pages/login_page/login_page.dart";
import "package:buangin/widget_components/rounded_button.dart";
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
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          Positioned(
              bottom: 80,
              child: RoundedButton(
                key: const Key('button_login'),
                text: "Mulai",
                press: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginPage()));
                },
              ))
        ]));
  }
}
