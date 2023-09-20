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
  bool loader = false;

  login() async {
              loader = true;
              try {
                showDialog(context: context, builder: (BuildContext){
                  return const Center(child: CircularProgressIndicator());
                });  
            final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
              email: emailController.text,
              password: passwordController.text
            );
            
            Navigator.push (context, MaterialPageRoute(builder: (BuildContext)=> HomeView()));
            
          } on FirebaseAuthException catch (e)
           {
            loader = false;
            if (e.code == 'user-not-found') {
              print('No user found for that email.');
              showDialog(context: context, builder: (BuildContext) {
                Future.delayed(const Duration(seconds: 3),(){
                  Navigator.of(context).pop(); }
                );
                return const AlertDialog(
                  title: Text('No user found for that email.'),
                );
              });
            } else if (e.code == 'wrong-password') {
              showDialog(context: context, builder: (BuildContext) {
                Future.delayed(const Duration(seconds: 3),(){
                  Navigator.of(context).pop(); }
                );
                return const AlertDialog(
                  title: Text('Wrong password provided for that user.'),
                );
              });
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
              margin: const EdgeInsets.all(10),
              color: const Color.fromARGB(255, 205, 204, 204),
              child: TextField(
                controller: emailController,
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.only(left: 20),
                hintText: 'Enter your email here',
              ),
              )
              ),
              Container(
              margin: const EdgeInsets.all(10),
              color: const Color.fromARGB(255, 205, 204, 204),
              child: TextField(
                controller: passwordController,
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.only(left: 20),
                  hintText: 'Enter your password here'
                ),
              )
              ),

              ElevatedButton(onPressed: () {
                login();
              },
              style:const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.amber)
                ),
              child: Container( 
                margin: const EdgeInsets.only(left: 20,right: 20),
                width: 320,
                height: 50,
                child: const Center(child: Text('Login'))),
                
              ),


              InkWell(
                onTap:() {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext)=> RegisterView())); 
                },
                child: Container(
                  margin: const EdgeInsets.only(top: 20),
                  child: const Text('Dont have a account? Create account!'))),

              Visibility(visible: loader, child: CircularProgressIndicator())
      
            ],
          ),
        ),
      ),
      
    );
  }
}