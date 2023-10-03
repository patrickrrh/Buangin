import 'package:buangin/constants.dart';
import 'package:buangin/src/features/authentication/screens/home_page/home_page.dart';
import 'package:buangin/src/widget_components/checkboxs.dart';
import 'package:buangin/src/widget_components/rounded_button.dart';
import 'package:buangin/src/widget_components/text_field_container.dart';
import 'package:flutter/material.dart';

class LogPag extends StatelessWidget {
  const LogPag({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SizedBox(
        height: size.height,
        width: double.infinity,
        child: Stack(alignment: Alignment.center, children: <Widget>[
          Positioned(
            top: size.height * 0.1,
            child: Image.asset(
              'assets/images/LoginPagePic.png',
              width: size.width * 0.8,
            ),
          ),
          Positioned(
              top: size.height * 0.35,
              child: const Text("Selamat Datang",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800))),
          Positioned(
              top: size.height * 0.4,
              child: const TextFieldContainer(
                  key: Key('TB_Login'),
                  child: TextField(
                      // onChanged: (value) {
                      //   \value;
                      // },
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 11),
                          hintText: "E-Mail",
                          border: InputBorder.none)))),
          Positioned(
              top: size.height * 0.495,
              child: const TextFieldContainer(
                  key: Key('TB_Login'),
                  child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 11),
                          hintText: "Password",
                          border: InputBorder.none)))),
          Positioned(
            top: size.height * 0.57,
            left: size.width * 0.075,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [CheckBoxs(), Text("Ingat Saya")],
                ),
                SizedBox(
                  width: 90,
                ),
                Text(
                  "Lupa Password?",
                  style: TextStyle(color: kSecondaryColor),
                )
              ],
            ),
          ),
          Positioned(
              top: size.height * 0.65,
              child: RoundedButton(
                key: const Key('button_login'),
                text: "Masuk",
                press: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomePage()));
                },
              ))
        ]));
  }
}
