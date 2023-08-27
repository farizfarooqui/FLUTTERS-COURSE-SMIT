import 'package:flutter/material.dart';
import 'package:practice/second_page.dart';

class firstPage extends StatelessWidget {
  const firstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('First Page'),),

      body: Center(child: ElevatedButton(onPressed: () {
         Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const secondPage()),
  );
      }, child: Text('Go to second page!')),),
    );
  }
}