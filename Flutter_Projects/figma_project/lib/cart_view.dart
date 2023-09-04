import 'package:figma_project/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'widgets.dart';




class MyCard extends StatefulWidget {
  const MyCard({super.key});

  @override
  State<MyCard> createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  @override
  List CardItems =["Bananas", "Biryani" , "Haleem", "Haleem", "Haleem", "Haleem", "Haleem", "Haleem"];
  
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(child: 
      Column( 
        children: [

        //banner and back button
         Stack(
           children: [
              Container(
              height: 200,
              width: double.infinity,
              child: Image.asset('assets/images/card/banner.jpg'),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: AppColors.black_20,
                  child: IconButton(onPressed: () {
                    Navigator.of(context).pop();
                  },
                   icon: const Icon(Icons.arrow_back_ios),
                   alignment: Alignment.center,
                   color: AppColors.black_100,
                   ),
                ),
                title: const Text('Shopping Cart'),
              )
            ],
         ),
         
         //text tile
         ListTile(
          tileColor: AppColors.orangeShade_1,
          title: Center(
            child: Text('Use code #HalalFood at Checkouut',
            style: TextStyle(
              color: AppColors.black_100,
            ),),
          ),
         ),

         //items list
         Expanded(
           child: ListView.builder(
            padding: const EdgeInsets.all(20),
            itemCount: CardItems.length,
            itemBuilder: (BuildContext context, int index) {
            return ListTile(
              leading: SvgPicture.asset('assets/images/card/listimage.svg'),
              title: Text(CardItems[index]),
              subtitle: Text('7.90'),
              trailing: 
              IconButton(onPressed: () {}, icon:const  Icon(Icons.add_circle_outlined)),
            );
           }),
         ),

         //bottom subtotal widget
              // ClipRRect(
              //   borderRadius: BorderRadius.circular(30),
              //   child: Container(
              //     padding: EdgeInsets.only(left: 20,right: 20),
              //     margin: EdgeInsets.only(left: 11,right: 11),
              //     height: 180,
              //     width: double.infinity,
              //     color: AppColors.black_20,
              //     child: Column(
              //       children: [
              //         Text("Subtotal"),
              //         Text("Delivery"),
              //         Text("Total"),
              //       ],
              //     )
              //     ),
              // ),

              Container(
                  margin: const EdgeInsets.only(left: 15,right: 15),
                  height: 180,
                  width: double.infinity,
                  color: AppColors.black_1,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),
                    child: Expanded(
                      child: Container(
                        color: AppColors.black_45,
                        child: const Text('Subtotal \nDelivery \nTotal \n')
                      ),
                    ),
                  )
                  ),
              
            
        ],
      )),
    );
  }
}