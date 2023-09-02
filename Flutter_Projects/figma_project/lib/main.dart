import 'package:figma_project/dropdown_button.dart';
import 'package:figma_project/home_view.dart';
import 'package:figma_project/onboarding_screen.dart';
import 'package:figma_project/splash.dart';
import 'package:flutter/material.dart';
import 'categories_view.dart';
import 'landing_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashView(),
    );
  }
}
