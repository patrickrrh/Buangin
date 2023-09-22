import 'package:buangin/pages/landing_page/landing_page_1.dart';
import 'package:buangin/pages/landing_page/landing_page_2.dart';
import 'package:buangin/pages/landing_page/landing_page_3.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
      children: const [LandingPage1(), LandingPage2(), LandingPage3()],
    ));
  }
}
