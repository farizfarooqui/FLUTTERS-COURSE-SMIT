import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class UserListView extends StatefulWidget {
  const UserListView({super.key});


  @override
  State<UserListView> createState() => _UserListViewState();
}

class _UserListViewState extends State<UserListView> {

  final user = FirebaseFirestore.instance.collection('user').snapshots();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Firestore Users Data'),
      ),
      body: StreamBuilder(
        stream:  FirebaseFirestore.instance.collection('user').snapshots(),
        builder: (context, snapshot) {
          if (snapshot.connectionState==ConnectionState.waiting) {
            return CircularProgressIndicator();
          }
          if (snapshot.hasError) {
            return CircularProgressIndicator();
          }

          var data = snapshot.data!.docs;
          // return Text('${data.length}');
          return ListView.builder(
            itemCount: data.length,
            itemBuilder: (BuildContext , int index ) {
              return  ListTile(
                leading: Icon(Icons.person),
                title: Text(data[index]['Name']),
                subtitle: Text(data[index]['Contact']),
                trailing: Text(data[index]['time']),
              );
            }
          );
        },
        )
    );
  }
}