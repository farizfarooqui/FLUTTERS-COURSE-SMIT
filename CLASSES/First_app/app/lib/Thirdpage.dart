import 'package:flutter/material.dart';

class Thirdpage extends StatelessWidget {
  const Thirdpage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar( 
        title : Text("Third page"),
        backgroundColor: Colors.blueGrey,
        shadowColor: Color.fromARGB(255, 4, 13, 138),
        ),
      body: Column( crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                color: Colors.white,
                  width: 100,
                  height: 100,
              ),
            ],
          ),
          Row( 
            children: [
              Container(
                width: 100,
                height: 100,
                color: Colors.blue,
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.black,
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.blue,
              ),
            ],
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.black,
          ),
          Row(
            children: [
              Container(
                width: 100,
                height: 100,
                color: Colors.blue,
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.black,
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.blue,
              ),
            ],
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.black,
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.blue,
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.black,
          ),

        ],
      ),
    );
    
  }
}