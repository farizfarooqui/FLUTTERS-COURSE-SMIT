import 'package:figma_project/colors.dart';
import 'package:figma_project/onboarding_screen.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const OnBoard_screen(),
      theme: ThemeData( splashColor: AppColors.orangeShade_2),
    );
  }
}
