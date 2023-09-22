import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      backgroundColor: const Color.fromARGB(255, 240, 215, 190),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 6,
              itemBuilder: (BuildContext , int) {
              return Stack(
                children: [
                  Container(
                    margin: const EdgeInsets.all(20),
                    color: const Color.fromARGB(137, 246, 62, 62),
                    height: 200,
                    width: 200,
                    child: const ListTile(
                      title: Text('Product 1'),
                      subtitle: Text('\$2.00'),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 40,top: 100),
                    height: 100,
                    width: 160,
                    color: Colors.amber,
                  ),
                ],
              );
            }),
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 6,
              itemBuilder: (BuildContext , int) {
              return Container(
                margin: const EdgeInsets.all(20),
                color: const Color.fromARGB(137, 246, 62, 62),
                height: 200,
                width: 200,
                child: const ListTile(
                  title: Text('Product 1'),
                  subtitle: Text('\$2.00'),
                ),
              );
            }),
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 6,
              itemBuilder: (BuildContext , int) {
              return Container(
                margin: const EdgeInsets.all(20),
                color: const Color.fromARGB(137, 246, 62, 62),
                height: 200,
                width: 200,
                child: const ListTile(
                  title: Text('Product 1'),
                  subtitle: Text('\$2.00'),
                ),
              );
            }),
          )
        ],
      )
    );
  }
}