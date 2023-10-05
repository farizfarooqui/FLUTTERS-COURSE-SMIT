import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

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
            return const CircularProgressIndicator();
          }
          if (snapshot.hasError) {
            return const Text('Error 404');
          }

          var data = snapshot.data!.docs;
           print('${data.length}');
          return ListView.builder(
            itemCount: data.length,
            itemBuilder: (BuildContext , int index ) {
              return  ListTile(
                leading: Icon(Icons.person),
                title: Text(data[index]['Name']),
                subtitle: Text(data[index]['Email']),
                trailing: IconButton(
                  onPressed: (){
                    FirebaseFirestore.instance.collection('user').doc(data[index]['userId']).delete();
                    ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Account deleted successfully')),
            );
                  }, 
                  icon: Icon(Icons.delete)),
              );
            }
          );
        },
        )
    );
  }
}