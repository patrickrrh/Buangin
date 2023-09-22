import 'package:buangin/constants.dart';
import 'package:buangin/pages/landing_page/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter',
      theme: ThemeData(
          primaryColor: kPrimaryColor, scaffoldBackgroundColor: kPrimaryColor),
      home: const HomePage(),
    );
  }
}
