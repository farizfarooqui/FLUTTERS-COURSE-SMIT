import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebasefirst/get_user_data.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  
  final String UserName;
  const HomeView({super.key, required this.UserName});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      
      appBar: AppBar(
        title: Text('Hey ${UserName}'),
        backgroundColor: Colors.amber,
      ),
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
                    color: Colors.red,
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
                    color: Colors.blue,
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
                    color: Colors.pink,
                  ),
                ],
              );
            }),
          ),

        ],
      ),
      drawer: GetUserdata(documentId: 'NHFHiv94WAluVZeHgz8b' )


          );
  }
}
