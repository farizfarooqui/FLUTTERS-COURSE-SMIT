import 'package:app/Thirdpage.dart';
import 'package:app/ToDoList.dart';
import 'package:app/to_do.dart';
import 'package:app/whatapp3.dart';
import 'package:app/whatsapp.dart';
import 'package:app/whatsapp2.dart';
import 'package:flutter/material.dart';
import 'package:app/CounterView.dart';


void main () {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
 
  @override
  Widget build(BuildContext context) {
    return const MaterialApp( 
      home: todo(),
    );
  }
}