import 'package:figma_project/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MakePayment extends StatelessWidget {
  const MakePayment({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.black_1,
        leading: Container(
          padding: const EdgeInsets.all(6),
          child: CircleAvatar(
            radius: 5,
            backgroundColor: AppColors.black_20,
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              }, 
              icon: Icon(Icons.arrow_back_ios , color: AppColors.black_100,)),
          ),
        ),
        title: Text('Payment', 
                style: TextStyle(
                  color: AppColors.black_100
                ),),
      ),


      body: SingleChildScrollView(
        child: Column(
          children: [
            //card holder number
            Container(
              margin: const EdgeInsets.only(top: 80,left: 30,right: 30),
              color: Colors.transparent,
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text('CARD HOLDER NUMBER' , style: TextStyle( color: AppColors.black_60),),
                  ),
                  Container(
                    child: TextField(
                      cursorColor: AppColors.black_100,
                      decoration: InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: AppColors.black_45)
                        )
                      ),
                    ),
                  )
                ],
              )
            ),
      
            //card number
            Container(
              margin: EdgeInsets.only(top: 50,left: 30,right: 30),
              color: Colors.transparent,
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text('CARD NUMBER' , style: TextStyle( color: AppColors.black_60),),
                  ),
                  Container(
                    child: TextField(
                      cursorColor: AppColors.black_100,
                      decoration: InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: AppColors.black_45)
                        )
                      ),
                    ),
                  )
                ],
              )
            ),
      
            //exp date ==> CVC
            Container(
              margin: EdgeInsets.only(top: 50,left: 30,right: 30),
              child: Row( children: [
                Container(
                  padding: EdgeInsets.only(right: 15),
                  width: 175,
                  color: Colors.transparent,
                  child: Column(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text('EXP DATE' , style: TextStyle( color: AppColors.black_60),),
                  ),
                  Container(
                    child: TextField(
                      cursorColor: AppColors.black_100,
                      decoration: InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: AppColors.black_45)
                        )
                      ),
                    ),
                  )
                ],
              ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 15),
                  width: 175,
                  color: Colors.transparent,
                  child: Column(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text('CVC' , style: TextStyle( color: AppColors.black_60),),
                  ),
                  Container(
                    child: TextField(
                      cursorColor: AppColors.black_100,
                      decoration: InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: AppColors.black_45)
                        )
                      ),
                    ),
                  )
                ],
              ),
                )
              ],),
            ), 
      
            //button
            Container(
              alignment: Alignment.bottomCenter,
              margin: EdgeInsets.only(top: 290),
              child: ElevatedButton(
                style: 
                ButtonStyle(
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
                  shadowColor: MaterialStatePropertyAll(AppColors.blueShade_1),
                  backgroundColor: MaterialStatePropertyAll(AppColors.blueShade_2)
                ),
                onPressed: (){
                  showDialog(context: context, builder: (BuildContext) {
                    Future.delayed(Duration(seconds: 2),(){
                      Navigator.of(context).pop();
                    }
                    );
                    
                    return CupertinoAlertDialog(
                      title: const Text('Order successfully Placed !'),
                      actions: [
                        SvgPicture.asset("assets/images/payment/tick.svg", color: Colors.green,)
                      ],
                    );
                  } 
                );
                },
                child: Container(
                  alignment: Alignment.bottomCenter,
                  height: 90,
                  width: 300,
                  child: Center(child: Text('Confirm Order',
                  style: TextStyle(
                    color: AppColors.black_1,
                    fontSize: 18
                  ),
                  )
                ),
                )
              ),
            )
      
          ],
        ),
      ),
    );
  }
}