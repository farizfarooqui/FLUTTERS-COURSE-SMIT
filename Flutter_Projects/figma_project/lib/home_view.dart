import 'package:carousel_slider/carousel_slider.dart';
import 'package:figma_project/colors.dart';
import 'package:figma_project/favorites_view.dart';
import 'package:figma_project/widgets.dart';
import 'package:slider_view/slider_view.dart';
import 'categories_view.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<String> addressArr = ['Green Way 3000, Sylhet', 'Halt road 201, Europe', 'Halt road 201, Asia', 'Halt road 201, Africa'];
  String addressDropDownValue = 'Green Way 3000, Sylhet';

  List<String> timeArr = ['1 Hour', '2 Hours', '3 Hours', '4 Hours'];
  String timeDropDownValue = '1 Hour';

  List <String> SliderImagesArr = ['assets/images/slider/slider1.jpg','assets/images/slider/slider2.png','assets/images/slider/slider3.png','assets/images/slider/slider5.png'];

  List RecommendedItemsArr = ['Hey','Hello','Hey','Hello','Hey','Hello','Hey','Hello','Hey','Hello'];
  List DealsArr = ['Happy','Hojao','yup','Hello','Hey','Hello','Hey','Hello','Hey','Hello'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Search Bar
          Container(
            padding: const EdgeInsets.only(left: 32, right: 32, top: 20, bottom: 30),
            width: MediaQuery.of(context).size.width * 1,
            color: AppColors.blueShade_1,
            child: SearchBarr("Search or Enter here...")//Function of Bar
          ),
      
          //Slider Banner
          CarouselSlider.builder(
            itemCount: SliderImagesArr.length,
            itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) {
              String ImageUrl = SliderImagesArr[itemIndex];
            return Container(
              color: Colors.transparent,
              child: Image.asset(ImageUrl,
              ),
            );
            },
            options: CarouselOptions(
              enlargeCenterPage: true,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 3),
              autoPlayAnimationDuration: const Duration(seconds: 3)
            ),
          ),
      
      
          //Recommended text
          Container(
            margin: const EdgeInsets.only(top: 20),
            child: const TileWidget(text: 'Recommended ',),
          ),
      
           // First row List
              Expanded(
                child: ListView.builder(
                  itemCount: RecommendedItemsArr.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: const EdgeInsets.all(10),
                    padding:const EdgeInsets.all(10),
                    color: AppColors.black_45,
                    width: 150,
                    height: 200,
                    child: Text(RecommendedItemsArr[index]),
                  );
                }),
              ),
      
      
          //Deals Text
          Container(
            margin: const EdgeInsets.only(top: 20),
            child: const TileWidget(text: 'Deals on Fruits & Tea'),
          ),
      
      
            //Second List
              Expanded(
                child: ListView.builder(
                  itemCount: DealsArr.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: const EdgeInsets.all(10),
                    padding:const EdgeInsets.all(10),
                    color: AppColors.black_45,
                    width: 150,
                    height: 200,
                    child: Text(DealsArr[index]),
                  );
                }),
              ),
      
        ],
      ),


      // bottomNavigationBar:BottomNavigationBar(items: const [
      //   BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
      //   BottomNavigationBarItem(icon: Icon(Icons.category_sharp),label: "Categories"),
      //   BottomNavigationBarItem(icon: Icon(Icons.favorite_border),label: 'Favorites'),
      //   BottomNavigationBarItem(icon: Icon(Icons.more_vert),label: 'More'),
      // ],
      // currentIndex: _currentIndex,
      // backgroundColor: AppColors.blueShade_1 ,
      // selectedItemColor: AppColors.orangeShade_2,
      // type: BottomNavigationBarType.fixed,
      // selectedFontSize: 12 ,
      // selectedIconTheme: const IconThemeData(size: 35 ),
      
      // onTap: (index) {
      //   setState(() {
      //     _currentIndex=index;
      //   });
      // },
      // ),
      // CurvedNavigationBar(
      //   items: [
      //     Icon(Icons.home, color: AppColors.black_100,),
      //     Icon(Icons.category_sharp, color: AppColors.black_100),
      //     Icon(Icons.favorite_border, color: AppColors.black_100),
      //     Icon(Icons.more_vert, color: AppColors.black_100),
      //   ],
      //   backgroundColor: Colors.transparent,
      //   color: AppColors.black_1,
      //   buttonBackgroundColor: AppColors.black_1,
      //   animationDuration: const Duration(milliseconds: 400 ),
      //   onTap: (index) {
      //     setState(() {
      //       // Update the color of the tapped icon and reset the color of others
      //       _currentIndex = index;
      //     });
      //   },
      //   index: _currentIndex,
        
      // ),
    );
  }
}
