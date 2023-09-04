import 'package:figma_project/home_view.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'home_view.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'colors.dart';

class MyProduct extends StatefulWidget {
  const MyProduct({super.key});

  @override
  State<MyProduct> createState() => _MyProductState();
}

class _MyProductState extends State<MyProduct> {

  static List<Product> productList = [
    Product( name: "Product 1", price: 10.99),
    Product( name: "Product 2", price: 19.99),
    // Add more products here
  ];

  List ProductImagesArr = ['assets/images/product/biryani/biryani1.jpg','assets/images/product/biryani/biryani2.jpg','assets/images/product/biryani/biryani3.jpg'];
  final ProductKaController = PageController();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.black_1,
        title : Text('Biryani',
        style: TextStyle(
          color: AppColors.black_100
        ),
        ),
        leading:  CircleAvatar(
                  radius: 3,
                  backgroundColor: AppColors.black_20,
                  child: IconButton(onPressed: () {
                    Navigator.of(context).pop();
                  },
                   icon: const Icon(Icons.arrow_back_ios),
                   alignment: Alignment.center,
                   color: AppColors.black_100,
                   ),
                ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.shopping_bag_outlined,
          color: AppColors.black_100,))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [

            //product Images
            CarouselSlider.builder(
              itemCount: ProductImagesArr.length, 
              itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) {
                String ImageUrl = ProductImagesArr[itemIndex];
                return Container(
                    color: Colors.transparent,
                    child: Image.asset(ImageUrl)
                  );
              }, 
              options: CarouselOptions(
                enlargeCenterPage: true,
                enableInfiniteScroll: false,
                autoPlay: false
                
              )
            ),

            //
            Container(
              padding: const EdgeInsets.only(top: 10),
              child: SmoothPageIndicator(
                controller: ProductKaController,
                count: ProductImagesArr.length,
                axisDirection: Axis.horizontal,
              )
             )


          ],
        ),
      )
    );
  }
}
class Product {
  final String name;
  final double price;

  Product({required this.name, required this.price});
}
