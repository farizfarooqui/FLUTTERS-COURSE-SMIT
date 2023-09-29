import 'package:firebase_core/firebase_core.dart';
import 'package:firebasefirst/firebase_options.dart';
import 'package:firebasefirst/form.dart';
import 'package:firebasefirst/loginscreen.dart';
import 'package:firebasefirst/registerscreen.dart';
import 'package:flutter/material.dart';
import 'future_stream_.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FormsView(),
    );
  }
}
