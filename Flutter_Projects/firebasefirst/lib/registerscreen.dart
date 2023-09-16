import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebasefirst/homescreem.dart';
import 'package:firebasefirst/loginscreen.dart';
import 'package:flutter/material.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {

  register() async {
            try {
          final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
            email: "hello@gmail.com",
            password: '123',
          );
          Navigator.push(context, MaterialPageRoute(builder: (BuildContext)=> HomeView()));
        } on FirebaseAuthException catch (e) {
          if (e.code == 'weak-password') {
            print('The password provided is too weak.');
          } else if (e.code == 'email-already-in-use') {
            print('The account already exists for that email.');
          }
        } catch (e) {
          print(e);
        }
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.all(10),
              color: Colors.grey,
              child: TextField()
              ),
            Container(
              margin: EdgeInsets.all(10),
              color: Colors.grey,
              child: TextField()
              ),
              Container(
              margin: EdgeInsets.all(10),
              color: Colors.grey,
              child: TextField()
              ),
            ElevatedButton(onPressed: () {
              register();
            }, 
            child: Text('Register')),
            InkWell(
              child: Text('Already have an account? Login!'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext)=> LoginView()));
              },
            )
          ],
        )),
    );
  }
}