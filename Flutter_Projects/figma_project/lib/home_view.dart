import 'package:carousel_slider/carousel_slider.dart';
import 'package:figma_project/cart_view.dart';
import 'package:figma_project/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'product.dart';
import 'package:figma_project/widgets.dart';
import 'package:flutter/material.dart';

 List MyCardItems = [];

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

  List RecommendedItemsArr = ['Biryani','Haleem','Karhai','Nihari','Burger'];
  List RecommendedItemsURLArr = ['assets/images/recommend/biryani.jpg','assets/images/recommend/haleem.jpg','assets/images/recommend/karhai.jpg','assets/images/recommend/nihari.jpg','assets/images/recommend/burger.jpg'];

  List DealArr =['Azadi Deal' , 'Weekend Deal' , 'Mid Night Deal' ,'Gol-Gappay Combo' , 'Weekend Deal'];
  List DealsURLArr = ['assets/images/deals/1.jpg','assets/images/deals/2.jpg','assets/images/deals/3.jpg','assets/images/deals/4.png','assets/images/deals/5.png'];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SingleChildScrollView(
        child: Column(
          children: [
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
                    SizedBox(
                      height: 200 ,
                      child: ListView.builder(
                        itemCount: RecommendedItemsURLArr.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                        return Container(
                          margin:const EdgeInsets.only(left: 10,bottom: 10),
                          child: ElevatedButton(style:ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(AppColors.black_1),),
                            onPressed: () {},
                            child: Stack(
                              children: [
                                Container(
                                  color: AppColors.black_1,
                                  // width: 130,
                                  child: Image.asset(RecommendedItemsURLArr[index],)
                                ),
                                Container(
                                  alignment: Alignment.bottomLeft,
                                  child: Text(RecommendedItemsArr[index],
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: AppColors.blueShade_2,
                                    fontWeight: FontWeight.w700,
                                    backgroundColor:AppColors.black_20
                                  ),),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(left: 120,top: 150),
                                  // alignment: Alignment.topRight,
                                  child: IconButton(onPressed: (){
                                    MyCardItems.add(RecommendedItemsArr[index]);
                                    // MyCard.add(RecommendedItemsArr[index]);
                                  }, icon: const Icon(Icons.add_circle_sharp,color: Color.fromARGB(255, 21, 96, 161)),)
                                )
                              ],
                            ),
                          ),
                        );
                      }),
                    ),
                    
                    
                //Deals Text
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  child: const TileWidget(text: 'Combos and Deals'),
                ),
                    
                    
                  //Deals list
                    SizedBox(
                      height: 200,
                      child: ListView.builder(
                        itemCount: DealArr.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                        return Container(
                          margin:const EdgeInsets.only(left: 10,bottom: 10),
                          child: ElevatedButton(style:ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(AppColors.black_1),),
                            onPressed: () {},
                            child: Stack(
                              children: [
                                Container(
                                  color: AppColors.black_1,
                                  // width: 130,
                                  child: Image.asset(DealsURLArr[index],)
                                ),
                                Container(
                                  alignment: Alignment.bottomLeft,
                                  child: Text(DealArr[index],
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: AppColors.blueShade_2,
                                    fontWeight: FontWeight.w700,
                                    backgroundColor:AppColors.black_20
                                  ),),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(left: 160,top: 150),
                                  // alignment: Alignment.bottomRight,
                                  child: IconButton(onPressed: (){
                                    MyCardItems.add(DealArr[index]);
                                  }, icon: const Icon(Icons.add_circle_sharp,color: Color.fromARGB(255, 21, 96, 161),),)
                                )
                              ],
                            ),
                          ),
                        );
                      }),
                    ),

              ],
        ),
      )

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
