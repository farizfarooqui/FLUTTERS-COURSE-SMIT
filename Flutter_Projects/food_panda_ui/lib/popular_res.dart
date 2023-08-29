import 'package:flutter/material.dart';

class popularRes extends StatefulWidget {
  const popularRes({super.key});

  @override
  State<popularRes> createState() => _popularResState();
}

class _popularResState extends State<popularRes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: const Text('Macdonalds'),
      ),
    );;
  }
}