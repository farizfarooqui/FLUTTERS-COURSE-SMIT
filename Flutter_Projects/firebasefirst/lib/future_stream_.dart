import 'package:flutter/material.dart';

class FutureAndStream extends StatefulWidget {
  const FutureAndStream({super.key});

  @override
  State<FutureAndStream> createState() => _FutureAndStreamState();
}

class _FutureAndStreamState extends State<FutureAndStream> {

  Future <int> increment(){
    return Future(() => 6);
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(

          )
        ],
      ),
    );
  }
}