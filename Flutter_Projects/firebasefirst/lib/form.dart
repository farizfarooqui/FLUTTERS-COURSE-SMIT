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

  List usersNames = [];
  

  signup()async{

            if (createPasswordController.text!=comfirmPasswordController.text) {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Password does not match')));
              return exitCode;
            }

    try {
            final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
            email: emailController.text,
            password: comfirmPasswordController.text,
            );
            usersNames.add(nameController.text);
          // ignore: use_build_context_synchronously, non_constant_identifier_names
          Navigator.push(context, MaterialPageRoute(builder: (Context)=>  HomeView(UserName: nameController.text)));
          
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
          const Text('SIGN UP !!',
          style: TextStyle(
            fontSize: 25,
            color: Colors.black
          ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 10,right: 10,top: 20),
            child: Form(
              key: _formkey,
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Enter Full Name'
                    ),
                    validator: (value) {
                      if (value==null || value.isEmpty) {
                        return 'Enter this field';
                      }
                      return null;
                    },
                    textCapitalization: TextCapitalization.characters,
                    controller: nameController,
                    
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Enter Email'
                    ),
                    validator: (value) {
                      if (value==null || value.isEmpty) {
                        return 'Enter this field';
                      }
                      return null;
                    },
                    controller: emailController,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Create Password'
                    ),
                    validator: (value) {
                      if (value==null || value.isEmpty) {
                        return 'Enter this field';
                      }
                      return null;
                    },
                    controller: createPasswordController,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Comfirm Password'
                    ),
                    validator: (value) {
                      if (value==null || value.isEmpty) {
                        return 'Enter this field';
                      }
                      return null;
                    },
                    controller: comfirmPasswordController,
                  ),

                  const SizedBox(
                    height: 30,
                  ),

                  //submit Buttom
                  ElevatedButton(onPressed: () {
                    if (_formkey.currentState!.validate()) {
                      signup();
                    }
                  },
                    style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.amber)
                   ),
                   child: const SizedBox(
                    height: 60,
                    width: double.maxFinite,
                    child: Center(child: Text('Lock kro !!',
                    style: TextStyle(
                      fontSize:16
                    ),
                    ))),
                   )
                ], 
              )
              ),
          ),

        
        ],),
    );
  }
}