import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color.fromARGB(255, 248, 205, 75),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Successfull'),
            ElevatedButton(onPressed: (){
               FirebaseAuth.instance.signOut();
               Navigator.pop(context);
            }, 
            child: Icon(Icons.logout))
          ],
        ),
      ),
    );
  }
}