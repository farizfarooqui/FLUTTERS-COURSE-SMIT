import 'package:figma_project/colors.dart';
import 'package:figma_project/home_view.dart';
import 'package:flutter/material.dart';

class pract extends StatefulWidget {
  const pract({super.key});

  @override
  State<pract> createState() => _practState();
}

List TitleArr = ['Your holiday\nshopping\ndelivered to Screen\none ' ,'Your holiday\nshopping\ndelivered to Screen\ntwo ' ];
List SubTitleArr = ['Theres something for everyone to enjoy with Sweet Shop Favourites Screen 1','Theres something for everyone to enjoy with Sweet Shop Favourites Screen 2'];


class _practState extends State<pract> {

  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: AppColors.blueShade_1,
       body: Column(
         children: [
           Expanded(
             child: PageView(
              physics:const BouncingScrollPhysics(),
              children: [
                //page one
                Column(
                  children: [
                    Container(
                      color: AppColors.blueShade_1,
                      margin: const EdgeInsets.only(top: 100),
                      child: const Center(
                        child: Text('Your holiday\nshopping\ndelivered to Screen\none ',
                        textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w700,
                                color: Colors.white
                              ),
                        ),
                      ),
                    ),
                    Container( 
                      margin:const EdgeInsets.only(top: 20),
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
                    )
                  ],
                ),
                //second page
                Column(
                  children: [
                    Container(
                    color: AppColors.blueShade_1,
                      margin: const EdgeInsets.only(top: 100),
                      child: const Center(
                        child: Text('Your holiday\nshopping\ndelivered to Screen\ntwo ',
                        textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w700,
                                color: Colors.white
                              ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      color: AppColors.blueShade_1,
                      width: 280,
                      height: 66,
                       child: const Text('Theres something for everyone to enjoy with Sweet Shop Favourites Screen 2',
                       style: TextStyle(
                       fontSize: 18,
                       fontWeight: FontWeight.w500,
                       color: Color(0xffB2BBCE),
                       ),
                       ),
             
                    )
                  ],
                )
              ],
             ),
           ),

           Expanded(
             child: Column(
              children: [
                //image
                SizedBox( 
                  height: 160,
                  child:  Image.asset('assets/images/onboarding/onboarding3.png'),
                ),
                
                //button
                Container(
                margin: const EdgeInsets.only(top: 160),
                width: 290,
                height: 75,
                child: ElevatedButton(
                  style: ButtonStyle(
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))) ,
                    backgroundColor: MaterialStatePropertyAll(AppColors.black_1)//white color
                  ),
                  onPressed: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext)=> new HomeView()));
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
                      padding: const EdgeInsets.only(right: 20),
                      icon: const Icon(Icons.arrow_forward_rounded,
                      color: Colors.black,
                      ))
                    ],
                   ),
                  ),
              )
              ],
             ),
           )
         ],
       ),
    );
  }
}