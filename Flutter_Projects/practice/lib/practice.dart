import 'package:flutter/material.dart';
import 'package:practice/first_page.dart';

class practive extends StatefulWidget {
  const practive({super.key});

  @override
  State<practive> createState() => _practiveState();
}

class _practiveState extends State<practive> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home page'),),

      body: Center(
        child: ElevatedButton(onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=> firstPage()));
        }, 
        child: Text('Go to first page')),
      ),
    );
  }
}