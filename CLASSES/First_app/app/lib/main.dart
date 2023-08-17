import 'package:app/Thirdpage.dart';
import 'package:app/whatapp3.dart';
import 'package:app/whatsapp.dart';
import 'package:app/whatsapp2.dart';
import 'package:flutter/material.dart';

void main () {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp( 
      home:const whatsapp2(),
      theme: ThemeData(primarySwatch: Colors.green),
      
    );
  }
}