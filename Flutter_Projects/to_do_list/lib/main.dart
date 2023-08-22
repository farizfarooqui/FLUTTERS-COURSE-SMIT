import 'package:flutter/material.dart';
import 'package:to_do_list/to_do_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: todo(),
      theme: ThemeData( 
        shadowColor: const Color.fromARGB(255, 73, 43, 3),
        focusColor: const Color.fromARGB(255, 73, 43, 3),
        hoverColor: const Color.fromARGB(255, 73, 43, 3) ,
        splashColor: const Color.fromARGB(255, 73, 43, 3)),

    );
  }
}
