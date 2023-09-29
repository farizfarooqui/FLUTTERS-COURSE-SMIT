import 'dart:io';

import 'package:firebasefirst/homescreem.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

final _formkey = GlobalKey<FormState>();

class FormsView extends StatefulWidget {
  const FormsView({super.key});

  @override
  State<FormsView> createState() => _FormsViewState();
}

class _FormsViewState extends State<FormsView> {

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController createPasswordController = TextEditingController();
  TextEditingController comfirmPasswordController = TextEditingController();

  signup()async{

            if (createPasswordController.text!=comfirmPasswordController.text) {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Password does not match')));
              return exitCode;
            }

    try {
            final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
            email: emailController.text,
            password: comfirmPasswordController.text,
            );
          Navigator.push(context, MaterialPageRoute(builder: (Context)=> const HomeView()));
          
        } 
        on FirebaseAuthException catch (e) {
          if (e.code == 'weak-password') {
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Make Stronger Password !')));
          }
           else if (e.code == 'email-already-in-use') {
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Email already in use !')));
          }
        } catch (e) {
          print(e);
        }
  }

  @override
  Widget build(BuildContext context) {
    return  
    Scaffold(
      body: 
        Column( 
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          const Text('Fill up the form to get register',
          style: TextStyle(
            fontSize: 25,
            color: Color.fromARGB(255, 249, 179, 1)
          ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 10,right: 10,top: 20),
            child: Form(
              key: _formkey,
              child: Column(
                children: [
                  TextFormField(
                    validator: (value) {
                      if (value==null || value.isEmpty) {
                        return 'Enter the field';
                      }
                      return null;
                    },
                    textCapitalization: TextCapitalization.characters,
                    controller: nameController,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value==null || value.isEmpty) {
                        return 'Enter the field';
                      }
                      return null;
                    },
                    controller: emailController,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value==null || value.isEmpty) {
                        return 'Enter the field';
                      }
                      return null;
                    },
                    controller: createPasswordController,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value==null || value.isEmpty) {
                        return 'Enter the field';
                      }
                      return null;
                    },
                    controller: comfirmPasswordController,
                  ),
                  ElevatedButton(onPressed: () {
                    if (_formkey.currentState!.validate()) {
                      signup();
                    }
                  },
                   child: const Text('Lock kro !!'))
                ],
              )
              ),
          ),

        
        ],),
    );
  }
}