import 'package:figma_project/home_view.dart';
import 'package:flutter/material.dart';
import 'categories_view.dart';

class MyProduct extends StatefulWidget {
  const MyProduct({super.key});

  @override
  State<MyProduct> createState() => _MyProductState();
}

class _MyProductState extends State<MyProduct> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title : Text(''),
      ),
      body: const Center(
        child: Text('Hey Bye'),
      ),
    );
  }
}