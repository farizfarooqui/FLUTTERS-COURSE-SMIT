import 'package:flutter/material.dart';
// ignore: unused_import
import 'colors.dart';

class OnBoardScreen extends StatelessWidget {
  const OnBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppColors.blueShade_1,
        child: SafeArea(
          
          child: Column(
            children: [

              // First text widget
              Container(
                color: AppColors.blueShade_1,
                margin: const EdgeInsets.only(top: 93,left: 10),
                width: 294,
                height: 150,
                child: const Center(
                  child: Text('Your holiday shopping delivered to Screen one ',
                  textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w700,
                          color: Colors.white
                        ),
                  ),
                ),
              ),
      
              // Second text widget
               Container(
                color: AppColors.blueShade_1,
                width: 280,
                height: 66,
                 child: const Text('Theres something for everyone to enjoy with Sweet Shop Favourites Screen 1',
                 style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Color(0xffB2BBCE),
                 ),
                 ),
               ),
      
               //image widget
              Container(
                margin: const EdgeInsets.only(top: 130),
                color: AppColors.blueShade_1,
                child: Center(
                  child: Image.asset('assets/images/onboarding/onboarding4.png',
                  width: 210,
                  ),
                ),
              ),
              const Spacer(),            
      
              //Buttom button
              Container(
                margin: const EdgeInsets.only(bottom: 50),
                width: 290,
                height: 75,
                child: ElevatedButton(
                  style: ButtonStyle(
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))) ,
                    backgroundColor: MaterialStatePropertyAll(AppColors.black_1)
                  ),
                  onPressed: (){
                    // Navigator.push(context, );
                  }, 
                  child: Row(
                     children: [
                      const Padding(padding: EdgeInsets.only(left: 40)),
                      const  Text('Get Started',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                      ),
                      const Spacer(),
                      IconButton(onPressed: () {}, 
                      padding: const EdgeInsets.only(right: 10),
                      icon: const Icon(Icons.arrow_forward_rounded,
                      color: Colors.black,
                      ))
                    ],
                   ),
                  ),
              )
      
            ],
          )),
      ),
    );
  }
}