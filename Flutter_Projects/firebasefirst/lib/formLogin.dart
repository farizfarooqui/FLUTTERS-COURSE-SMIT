import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebasefirst/homescreem.dart';
import 'package:flutter/material.dart';

final _loginFormKey = GlobalKey<FormState>();

class FormLogin extends StatefulWidget {
  const FormLogin({Key? key});

  @override
  State<FormLogin> createState() => _FormLoginState();
}

TextEditingController emailController = TextEditingController();
TextEditingController passwordController = TextEditingController();




class _FormLoginState extends State<FormLogin> {

login()async {
  try {
    final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: emailController.text,
      password: passwordController.text
      );
      Navigator.push(context, MaterialPageRoute(builder: (BuildContext)=>HomeView(UserName: emailController.text)));
  } catch (e) {
    
  }
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.all(20),
            child: Column(
              children: [
                const Text('Login here'),
                Form(
                  key: _loginFormKey,
                  child: Column(
                    children: [
                      TextFormField(
                        validator: (value) {
                          if (value==null || value.isEmpty) {
                            return 'Enter this field';
                          }
                        },
                      ),
                      TextFormField(
                        validator: (value) {
                          if (value==null || value.isEmpty) {
                            return 'Enter this field';
                          }
                        },
                      ),
                    ],
                  ),
                ),
          
                const SizedBox(
                  height: 50,
                ),
          
                ElevatedButton(
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.amber)
                  ),
                  onPressed: (){
                    if (_loginFormKey.currentState!.validate()) {
                      //login
                    }
                  }, 
                  child: const SizedBox(
                    height: 60,
                    width: double.maxFinite,
                    child: Center(
                      child: Text('Login !',
                      style: TextStyle(
                        fontSize: 18
                      ),
                      ))))
              ],
            ),
          ),
        ),
      ),
    );
  }
}