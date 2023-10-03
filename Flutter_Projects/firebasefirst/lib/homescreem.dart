import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebasefirst/get_user_data.dart';
import 'package:firebasefirst/loginscreen.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

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
      drawer: GetUserdata()
      // Drawer(
      //       child: ListView(
      //         children: [
      //           Container(
      //             height: 150,
      //             width: double.maxFinite,
      //             color: Colors.amber,
      //             child: ListTile(
      //               leading: CircleAvatar(
      //                 backgroundColor: Colors.blueAccent,
      //               ),
      //               title: Text('Fariz Farooqui'),
      //               subtitle: Text('Active'),
      //             ),
      //           ),
      //           ExpansionTile(
      //             title: Text('Account details'),
      //             onExpansionChanged: (value) => true,
      //             children: [
      //               Container(
      //                 margin: EdgeInsets.all(10),
      //                 child: Text('Information on how to contact a person or entity, typically including a telephone number, address etc Information on how to contact a person or entity, typically including a telephone number, address etc Information on how to contact a person or entity, typically including a telephone number, address etc'),
      //               )
      //             ],
      //             ),
      //             ExpansionTile(
      //             title: Text('Contact details'),
      //             onExpansionChanged: (value) => true,
      //             children: [
      //               Container(
      //                 margin: EdgeInsets.all(10),
      //                 child: Text('Information on how to contact a person or entity, typically including a telephone number, address etc Information on how to contact a person or entity, typically including a telephone number, address etc Information on how to contact a person or entity, typically including a telephone number, address etc'),
      //               )
      //             ],
      //             ),
      //             ExpansionTile(
      //               title: Text('Data'),
      //               onExpansionChanged: (value) => true,
      //               children: [
      //                 Container(
      //                 margin: EdgeInsets.all(10),
      //                 child: Text('Information on how to contact a person or entity, typically including a telephone number, address etc Information on how to contact a person or entity, typically including a telephone number, address etc Information on how to contact a person or entity, typically including a telephone number, address etc'),
      //               ),
      //               Container(
      //                 margin: const EdgeInsets.all(10),
      //                 child: const Text('Information on how to contact a person or entity, typically including a telephone number, address etc Information on how to contact a person or entity, typically including a telephone number, address etc Information on how to contact a person or entity, typically including a telephone number, address etc'),
      //               )
      //               ],
      //               ),
      //               TextButton(
      //                 onPressed: () {},
      //                 child: const ListTile(
      //                   title: Text('Settings'),
      //                   trailing: Icon(Icons.settings),
      //                 ),
      //               ),
      //               TextButton(
      //                 onPressed: () {
      //                   FirebaseAuth.instance.signOut();
      //                   Navigator.push(context, MaterialPageRoute(builder: (BuildContext)=>LoginView() ));
      //                 },
      //                 child: const ListTile(
      //                   title: Text('Logout'),
      //                   trailing: Icon(Icons.logout),
      //                 ),
      //               )
      //         ],
      //       ),
      //     )
        
    );
  }
}


