import 'package:flutter/material.dart';

class secondPage extends StatefulWidget {
  const secondPage({super.key});

  @override
  State<secondPage> createState() => _secondPageState();
}

class _secondPageState extends State<secondPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title:const Text('Second Page'),
      ),
      body: GridView(
        gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      children: [
        ElevatedButton(
          onPressed: () {},
          style: ButtonStyle(
            overlayColor: const MaterialStatePropertyAll(Colors.pink),
            backgroundColor: MaterialStateProperty.all(Colors.white),
            shadowColor: MaterialStateProperty.all(Colors.transparent),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(60.0),
            child: Container(
              margin: const EdgeInsets.all(16),
              child: Image.asset('assets/images/panda1.png'),
            ),
          ),
        ),
        ElevatedButton(onPressed: () {},
        style: const ButtonStyle(
              overlayColor: MaterialStatePropertyAll(Colors.pink),
            backgroundColor: MaterialStatePropertyAll(Colors.white),
            shadowColor: MaterialStatePropertyAll(Colors.transparent),
          ), child:  Container(
          margin:const EdgeInsets.all(16),
          height: MediaQuery.of(context).size.height*1,
          child: Image.asset('assets/images/panda5.jpg'),
         ),
        ),
        ElevatedButton(onPressed: () {},
          style: const ButtonStyle(
                overlayColor: MaterialStatePropertyAll(Colors.pink),
            backgroundColor: MaterialStatePropertyAll(Colors.white),
            shadowColor: MaterialStatePropertyAll(Colors.transparent),
          ),
          child:  Container(
          margin:const EdgeInsets.all(16),
          height: MediaQuery.of(context).size.height*1,
          child: Image.asset('assets/images/panda3.png'),
         ),
        ),
        ElevatedButton(onPressed: () {},
        style: const ButtonStyle(
          overlayColor: MaterialStatePropertyAll(Colors.pink),
            backgroundColor: MaterialStatePropertyAll(Colors.white),
            shadowColor: MaterialStatePropertyAll(Colors.transparent),
          ), child:  Container(
          margin:const EdgeInsets.all(16),
          height: MediaQuery.of(context).size.height*1,
          child: Image.asset('assets/images/panda4.png'),
         ),
        ),
        ElevatedButton(
          onPressed: () {},
          style: ButtonStyle(
            overlayColor: const MaterialStatePropertyAll(Colors.pink),
            backgroundColor: MaterialStateProperty.all(Colors.white),
            shadowColor: MaterialStateProperty.all(Colors.transparent),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(60.0),
            child: Container(
              margin: const EdgeInsets.all(16),
              child: Image.asset('assets/images/panda1.png'),
            ),
          ),
        ),
        ElevatedButton(onPressed: () {},
        style: const ButtonStyle(
              overlayColor: MaterialStatePropertyAll(Colors.pink),
            backgroundColor: MaterialStatePropertyAll(Colors.white),
            shadowColor: MaterialStatePropertyAll(Colors.transparent),
          ), child:  Container(
          margin:const EdgeInsets.all(16),
          height: MediaQuery.of(context).size.height*1,
          child: Image.asset('assets/images/panda5.jpg'),
         ),
        ),
        ElevatedButton(onPressed: () {},
          style: const ButtonStyle(
                overlayColor: MaterialStatePropertyAll(Colors.pink),
            backgroundColor: MaterialStatePropertyAll(Colors.white),
            shadowColor: MaterialStatePropertyAll(Colors.transparent),
          ),
          child:  Container(
          margin:const EdgeInsets.all(16),
          height: MediaQuery.of(context).size.height*1,
          child: Image.asset('assets/images/panda3.png'),
         ),
        ),
        ElevatedButton(onPressed: () {},
        style: const ButtonStyle(
          overlayColor: MaterialStatePropertyAll(Colors.pink),
            backgroundColor: MaterialStatePropertyAll(Colors.white),
            shadowColor: MaterialStatePropertyAll(Colors.transparent),
          ), child:  Container(
          margin:const EdgeInsets.all(16),
          height: MediaQuery.of(context).size.height*1,
          child: Image.asset('assets/images/panda4.png'),
         ),
        ),
        ElevatedButton(
          onPressed: () {},
          style: ButtonStyle(
            overlayColor: const MaterialStatePropertyAll(Colors.pink),
            backgroundColor: MaterialStateProperty.all(Colors.white),
            shadowColor: MaterialStateProperty.all(Colors.transparent),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(60.0),
            child: Container(
              margin: const EdgeInsets.all(16),
              child: Image.asset('assets/images/panda1.png'),
            ),
          ),
        ),
        ElevatedButton(onPressed: () {},
        style: const ButtonStyle(
              overlayColor: MaterialStatePropertyAll(Colors.pink),
            backgroundColor: MaterialStatePropertyAll(Colors.white),
            shadowColor: MaterialStatePropertyAll(Colors.transparent),
          ), child:  Container(
          margin:const EdgeInsets.all(16),
          height: MediaQuery.of(context).size.height*1,
          child: Image.asset('assets/images/panda5.jpg'),
         ),
        ),
        ElevatedButton(onPressed: () {},
          style: const ButtonStyle(
                overlayColor: MaterialStatePropertyAll(Colors.pink),
            backgroundColor: MaterialStatePropertyAll(Colors.white),
            shadowColor: MaterialStatePropertyAll(Colors.transparent),
          ),
          child:  Container(
          margin:const EdgeInsets.all(16),
          height: MediaQuery.of(context).size.height*1,
          child: Image.asset('assets/images/panda3.png'),
         ),
        ),
        ElevatedButton(onPressed: () {},
        style: const ButtonStyle(
          overlayColor: MaterialStatePropertyAll(Colors.pink),
            backgroundColor: MaterialStatePropertyAll(Colors.white),
            shadowColor: MaterialStatePropertyAll(Colors.transparent),
          ), child:  Container(
          margin:const EdgeInsets.all(16),
          height: MediaQuery.of(context).size.height*1,
          child: Image.asset('assets/images/panda4.png'),
         ),
        ),
      ],),
    );
  }
}