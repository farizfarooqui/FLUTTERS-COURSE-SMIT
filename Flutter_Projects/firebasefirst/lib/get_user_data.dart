import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'loginscreen.dart';

class GetUserdata extends StatelessWidget {
  const GetUserdata({super.key});

  @override
  Widget build(BuildContext context) {

    final String DocumentId;
    CollectionReference user = FirebaseFirestore.instance.collection('user');

    return FutureBuilder<DocumentSnapshot>(
      future: user.firestore.collection('user').{'userId'}.get() ,
      builder:(BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {
        if (snapshot.hasError) {
          return Text("Something went wrong");
        }

        if (snapshot.hasData && !snapshot.data!.exists) {
          return Text("Document does not exist");
        }

        if (snapshot.connectionState == ConnectionState.done) {
          Map<String, dynamic> data = snapshot.data!.data() as Map<String, dynamic>;
          return Drawer(
            child: ListView(
              children: [
                Container(
                  height: 150,
                  width: double.maxFinite,
                  color: Colors.amber,
                  child: ListTile(
                    leading: const CircleAvatar(
                      backgroundColor: Colors.blueAccent,
                    ),
                    title: Text(data['Name']),
                    subtitle: Text(data['Email']),
                  ),
                ),
                ExpansionTile(
                  title: const Text('Account details'),
                  onExpansionChanged: (value) => true,
                  children: [
                    Container(
                      margin: const EdgeInsets.all(10),
                      child: const Text('Information on how to contact a person or entity, typically including a telephone number, address etc Information on how to contact a person or entity, typically including a telephone number, address etc Information on how to contact a person or entity, typically including a telephone number, address etc'),
                    )
                  ],
                  ),
                  ExpansionTile(
                  title: Text('Contact details'),
                  onExpansionChanged: (value) => true,
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      alignment: Alignment.topLeft,
                      child: Text('Phone No :${data['Contact']} \nEmail : ${data['Email']}'),
                    )
                  ],
                  ),
                  ExpansionTile(
                    title: Text('Data'),
                    onExpansionChanged: (value) => true,
                    children: [
                      Container(
                      margin: EdgeInsets.all(10),
                      child: Text('Information on how to contact a person or entity, typically including a telephone number, address etc Information on how to contact a person or entity, typically including a telephone number, address etc Information on how to contact a person or entity, typically including a telephone number, address etc'),
                    ),
                    Container(
                      margin: const EdgeInsets.all(10),
                      child: const Text('Information on how to contact a person or entity, typically including a telephone number, address etc Information on how to contact a person or entity, typically including a telephone number, address etc Information on how to contact a person or entity, typically including a telephone number, address etc'),
                    )
                    ],
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const ListTile(
                        title: Text('Settings'),
                        trailing: Icon(Icons.settings),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        FirebaseAuth.instance.signOut();
                        Navigator.push(context, MaterialPageRoute(builder: (BuildContext)=>LoginView() ));
                      },
                      child: const ListTile(
                        title: Text('Logout'),
                        trailing: Icon(Icons.logout),
                      ),
                    )
              ],
            ),
          );
        }
        return Text("loading");
      },
    );
  }
}