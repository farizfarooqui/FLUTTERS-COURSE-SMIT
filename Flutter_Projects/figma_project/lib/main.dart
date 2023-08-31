import 'package:figma_project/home_view.dart';
import 'package:figma_project/learnpageview.dart';
import 'package:figma_project/onboarding_screen.dart';
import 'package:figma_project/pract.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: pract(),
    );
  }
}
