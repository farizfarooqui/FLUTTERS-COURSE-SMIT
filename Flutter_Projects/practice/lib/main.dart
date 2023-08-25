import 'package:flutter/material.dart';
import 'package:practice/practice.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your applicat ion.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: practive(),
    );
  }
}
