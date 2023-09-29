import 'package:buangin/src/features/authentication/screens/landing_page/landing_page_1.dart';
import 'package:buangin/src/features/authentication/screens/landing_page/landing_page_2.dart';
import 'package:buangin/src/features/authentication/screens/landing_page/landing_page_3.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
      children: const [LandingPage1(), LandingPage2(), LandingPage3()],
    ));
  }
}
