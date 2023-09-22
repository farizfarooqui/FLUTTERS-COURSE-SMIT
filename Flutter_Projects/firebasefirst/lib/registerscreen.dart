import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebasefirst/homescreem.dart';
import 'package:firebasefirst/loginscreen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  register() async {
            try {
          final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
            email: emailController.text,
            password: passwordController.text,
           );
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (Context)=> HomeView()));
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
              margin: EdgeInsets.only(bottom: 30),
                child: Center(
                  child: Text('REGISTER HERE!',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w500
                  ),
                  ),
                ),
              ),
            Container(
              margin: EdgeInsets.all(10),
              color: const Color.fromARGB(255, 205, 204, 204),
              child: TextField(
                controller: emailController,
              )
              ),
            Container(
              margin: EdgeInsets.all(10),
              color: const Color.fromARGB(255, 205, 204, 204),
              child: TextField(
                controller: passwordController,
              )
              ),
              Container(
              margin: EdgeInsets.all(10),
              color: const Color.fromARGB(255, 205, 204, 204),
              child: TextField()
              ),


            ElevatedButton(onPressed: () {
                register();
              }, child: Container(
                margin: EdgeInsets.only(left: 20,right: 20),
                width: 320,
                height: 50,
                child: Center(child: Text('Register'))),
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.amber)
                ),
              ),


            InkWell(
              child: Container(
                margin: EdgeInsets.only(top: 20),
                child: Text('Already have an account? Login!')),
              onTap: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext)=> LoginView()));
              },
            )
          ],
        )),
    );
  }
}