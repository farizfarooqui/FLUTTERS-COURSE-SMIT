import 'package:flutter/material.dart';
import 'colors.dart';

List RestaurantsArr = ['KFC Mellennium','Mcdonalds','Allah wala Biryani','OPTP-Dollmen','Al-Naseeb','KaBabjees','Broadway Pizza','Burger Bar'];


class CategoryPage extends StatefulWidget {
  const CategoryPage({Key? key});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Header text
            Container(
              margin: EdgeInsets.only(bottom: 6),
              padding: const EdgeInsets.only(left: 20, top: 20, bottom: 30),
              color: AppColors.blueShade_1,
              width: double.infinity,
              child: Text(
                'Shop\nBy Category',
                style: TextStyle(
                  color: AppColors.black_1,
                  fontSize: 50,
                ),
              ),
            ),
      
            // Grid view
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, 
                ),
                itemCount: RestaurantsArr.length,
                padding: const EdgeInsets.only(left: 15,right: 15,top: 20,bottom: 20),
                itemBuilder: (BuildContext context, int index)  {
                  return Container(
                    margin: EdgeInsets.only(top: 4,left: 10,right: 10,bottom: 12),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(AppColors.black_45)
                      ),
                      onPressed: () {},
                      child: Container(
                        color: AppColors.black_45,
                        height: 158,
                        child: Center(
                          child: Text(RestaurantsArr[index]),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
