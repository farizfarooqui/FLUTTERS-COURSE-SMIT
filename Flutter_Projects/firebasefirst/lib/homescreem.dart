import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class HomeView extends StatelessWidget {
  
  final String UserName;
  const HomeView({super.key, required this.UserName});

  adduser(){
    FirebaseFirestore.instance.collection('user').add({
      "name" : 'Fariz',
      "age" : 'hello'
      }).then((value) => print('sucessfull')).
      onError((error, stackTrace) => print('Unsucessfull'));
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Hey $UserName'),
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


          // FloatingActionButton(
          //         onPressed: () async {
          //           FirebaseAuth.instance.signOut();
          //           Navigator.pop(context);
          //         },
          //         child: Icon(Icons.logout),
          //       )


          ElevatedButton(onPressed: (){
            adduser();
          },
                         child: const Text("Add user details")),

          Drawer(
            child: Container(
              child: Text('hey'),
            ),
          )

        ],
      )
    );
  }
}
