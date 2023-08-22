import 'package:flutter/material.dart';

class CounterView extends StatefulWidget {
  const CounterView({super.key});

  @override
  State<CounterView> createState() => _CounterViewState();
}

class _CounterViewState extends State<CounterView> {
  bool value = true;
  int display = 1;
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Statefull Practice'),
      ),
      body:  Column(
        children: [
          Text( 'R : $display',
          style: const TextStyle(
            fontSize: 50,
            color: Color.fromARGB(255, 15, 60, 137)
          ),),
          ElevatedButton(onPressed: () {
            setState(() {
              if (value==true) {
                value=false ;
                display=1;
                }else{
                  display=0;
                  value=!value;
              }
            });
          }, 
          child: Text('Press me'))

        ],
      ),
    );
  }
}