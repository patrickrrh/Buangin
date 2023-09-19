import 'package:buangin/constants.dart';
import 'package:buangin/pages/landing_page/landing_page_1.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: kSecondaryColor,
          scaffoldBackgroundColor: kPrimaryColor),
      home: const LandingPage1(),
    );
  }
}
