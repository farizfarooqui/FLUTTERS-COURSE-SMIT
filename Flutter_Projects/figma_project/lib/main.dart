import 'package:figma_project/categories_view.dart';
import 'package:figma_project/data.dart';
import 'package:figma_project/home_view.dart';
import 'package:figma_project/landing_screen.dart';
import 'package:figma_project/onboarding_screen.dart';
import 'package:figma_project/product.dart';
import 'package:figma_project/splash.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:OnBoard_screen()
    );
  }
}
