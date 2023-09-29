import 'package:buangin/constants.dart';
import 'package:buangin/firebase_options.dart';
import 'package:buangin/src/features/authentication/screens/landing_page/landing_page.dart';
import 'package:buangin/src/repository/user_repository/authentication_repository/authentication_repository.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform).then((value) => Get.put(AuthenticationRepository()));
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
      home: const LandingPage(),
    );
  }
}