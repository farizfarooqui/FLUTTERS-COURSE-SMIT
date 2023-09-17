import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebasefirst/homescreem.dart';
import 'package:firebasefirst/registerscreen.dart';
import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  login() async {
              try {
            final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
              email: emailController.text,
              password: passwordController.text
            );
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext)=> HomeView()));
          } on FirebaseAuthException catch (e) {
            if (e.code == 'user-not-found') {
              print('No user found for that email.');
              ScaffoldMessenger(child: Text('j'));
            } else if (e.code == 'wrong-password') {
              print('Wrong password provided for that user.');
            }
          }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
              margin: EdgeInsets.all(10),
              color: Colors.grey,
              child: TextField(
                controller: emailController,
              )
              ),
              Container(
              margin: EdgeInsets.all(10),
              color: Colors.grey,
              child: TextField(
                controller: passwordController,
              )
              ),
              ElevatedButton(onPressed: () {
                login();
              }, child: Text('Login')),
              InkWell(
                onTap:() {
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext)=> RegisterView())); 
                },
                child: Text('Dont have a account? Create account!')),
      
            ],
          ),
        ),
      ),
      
    );
  }
}