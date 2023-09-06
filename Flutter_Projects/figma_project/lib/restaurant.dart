import 'package:figma_project/categories_view.dart';
import 'package:figma_project/home_view.dart';
import 'package:flutter/material.dart';
import 'colors.dart';

class Restaurant extends StatelessWidget {
  final String restaurantName; 

  Restaurant({Key? key, required this.restaurantName}) : super(key: key); // Constructor with restaurantName parameter

List counter = ['counter','counter','counter','counter','counter','counter','counter','counter','counter','counter','counter','counter','counter','counter','counter','counter','counter','counter','counter','counter','counter','counter','counter','counter','counter','counter','counter','counter','counter','counter','counter','counter','counter','counter','counter','counter','counter','counter','counter','counter','counter','counter','counter','counter','counter','counter','counter','counter','counter','counter','counter','counter','counter','counter','counter',];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ListTile(
              leading:  CircleAvatar(
                  backgroundColor: AppColors.black_20,
                  child: IconButton(onPressed: () {
                    Navigator.of(context).pop();
                  },
                   icon: const Icon(Icons.arrow_back_ios),
                   alignment: Alignment.center,
                   color: AppColors.black_100,
                   ),
                ),
          title: Text(restaurantName),
          ),

          Expanded(
            child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                                    itemCount: counter.length,
                                    itemBuilder: (BuildContext , int index) {
                                      return Stack(
                                        children: [
                                          Container(
                                            margin: EdgeInsets.all(6),
                                            padding: EdgeInsets.all(4),
                                            color: Color.fromARGB(255, 231, 215, 169),
                                            child: Center(child: Text(counter[index])),
                                          ),
                                          Container(
                                            alignment: Alignment.bottomRight,
                                            child: IconButton(
                                              onPressed: (){
                                                MyCardItems.add(counter[index]);
                                               }, 
                                              icon: Icon(Icons.add_circle_sharp),
                                              alignment: Alignment.bottomRight,
                                              ),
                                          )
                                        ],
                                      );
                                    }),
          )
        ],
      )),
    );
  }
}
