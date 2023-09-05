import 'package:figma_project/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyProduct extends StatefulWidget {
  const MyProduct({super.key});

  @override
  State<MyProduct> createState() => _MyProductState();
}

class _MyProductState extends State<MyProduct> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: AppColors.black_1,
      body: Column(children: [
        SizedBox(
          height: MediaQuery.of(context).size.height*0.25,
          child: Container(
            padding: const EdgeInsets.only(top: 10),
            child: Center(
              child: SvgPicture.asset('assets/images/card/listimage.svg',
              height: 300,),
            )
          ),
        ),


        Expanded(
          child: DraggableScrollableSheet(builder: (context , scrollController) {
            return Container(
              margin: EdgeInsets.all(20),
              color: AppColors.blueShade_2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                
              ),
            );
          }),
        )
      ],),
    ));
  }
}