import 'package:flutter/material.dart';

class fastfood extends StatefulWidget {
  const fastfood({super.key});

  @override
  State<fastfood> createState() => _fastfoodState();
}

class _fastfoodState extends State<fastfood> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title:const Text('KFC'),
      ),
    );
  }
}