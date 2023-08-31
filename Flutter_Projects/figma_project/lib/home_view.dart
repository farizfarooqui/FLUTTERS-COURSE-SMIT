import 'package:figma_project/colors.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  get icon => null;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        shadowColor: Colors.transparent,
        backgroundColor: AppColors.blueShade_1,
        title: const Text('Hey, Fariz', textAlign: TextAlign.left),
        actions: [
          IconButton(onPressed: () {}, icon:const Icon(Icons.shopping_bag_outlined))
        ],
      ),

      body: Column( children: [

        //Search Bar
        Container(
          padding: const EdgeInsets.only(left: 32,right: 32, top: 20,bottom: 30),
          width: MediaQuery.of(context).size.width*1,
          color: AppColors.blueShade_1,
          child: TextField(
            cursorColor: AppColors.black_1,//white color
            decoration: InputDecoration(
              filled: true,
              fillColor: AppColors.blueShade_2,
              prefixIcon: Icon(Icons.search, color: AppColors.black_10,),
              contentPadding: const EdgeInsets.all(18),
              hintText:'Search Products or Store' , hintStyle: const TextStyle(color: Color.fromARGB(255, 154, 152, 152)),
              focusedBorder: OutlineInputBorder(
                borderSide:const BorderSide( 
                  color: Colors.transparent),
                  borderRadius: BorderRadius.circular(50),
              ),
              border: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.transparent ,),
              borderRadius: BorderRadius.circular(50),
             ),
             enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide( color: Colors.transparent),
              borderRadius: BorderRadius.circular(50)
             )
            ),
            style: TextStyle(
            color: AppColors.black_1//white color
            ),
          ),
        ),


      ],),
    );
  }
}