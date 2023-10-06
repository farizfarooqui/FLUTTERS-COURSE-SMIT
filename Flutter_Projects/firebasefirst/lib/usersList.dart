import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';


class UserListView extends StatefulWidget {
  const UserListView({super.key});


  @override
  State<UserListView> createState() => _UserListViewState();
}

class _UserListViewState extends State<UserListView> {

  

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Firestore Users Data'),
      ),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection('user').snapshots(),
        builder: (context, snapshot) {
          if (snapshot.connectionState==ConnectionState.waiting) {
            return const Center(child:  CircularProgressIndicator());
          }
          if (snapshot.hasError) {
            return const Text('Error 404');
          }

          var data = snapshot.data!.docs;
          return ListView.builder(
            itemCount: data.length,
            itemBuilder: (BuildContext , int index ) {
              return  ListTile(
                leading: const Icon(Icons.person),
                title: Text(data[index]['Name']+',' +data[index]['Age']+' Years old'),
                subtitle: Text(data[index]['Id']),

                trailing: IconButton(
                  onPressed: (){
                  }, 
                  icon: const Icon(Icons.delete , color: Colors.red,)),
              );
            }
          );
        },
        )
    );
  }
}