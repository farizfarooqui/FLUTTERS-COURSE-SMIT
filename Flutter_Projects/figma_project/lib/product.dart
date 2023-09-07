import 'package:figma_project/colors.dart';
import 'package:figma_project/widgets.dart';
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
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.black_1,
        body: Column(
          children: [
            // Product images
            Stack(
           children: [
              SizedBox(
              height: MediaQuery.of(context).size.height * 0.25,
              child: Container(
                padding: const EdgeInsets.only(top: 10),
                child: Center(
                  child: SvgPicture.asset(
                    'assets/images/card/listimage.svg',
                    height: 300,
                  ),
                ),
              ),
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
                title: const Text('Details',
                style: TextStyle(
                  fontWeight: FontWeight.w500
                ),),
              )
            ],
         ),

            //lite text
            Container(
              margin:const EdgeInsets.only(top: 15),
              child: ListTile(
                minVerticalPadding: 20,
                title: const Center(child: Text('Use code #HalalFood at Checkouut')),
                tileColor: AppColors.orangeShade_1,
              ),
            ),

            // Product details with rounded DraggableScrollableSheet
           Expanded(
             child: DraggableScrollableSheet(
              initialChildSize: 0.90,
              minChildSize: 0.90,
              maxChildSize: 0.98,
              snap: true,
              builder:(BuildContext context, ScrollController scrollController) {
              return ClipRRect(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),
                child: SingleChildScrollView(
                  controller: scrollController,
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                            padding: EdgeInsets.all(20),
                            color: Colors.amber,
                            width: double.maxFinite,
                            child: const Text('Product Name',
                            style: TextStyle(
                              fontSize: 60
                            ),),
                          ),
                          Container(
                            height: 6,
                            width: 60,
                            color: Colors.grey,
                            margin: const EdgeInsets.only(top: 10,left: 170),
                            alignment: Alignment.center,
                          )
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.all(20),
                        color: Colors.amberAccent,
                        width: double.maxFinite,
                        child: const Text('Price 130 \$',
                        style: TextStyle(
                          fontSize: 30
                        ),),
                      ),
                      Container(
                        padding: EdgeInsets.all(20),
                        color: const Color.fromARGB(255, 232, 220, 175),
                        height: 200,
                        child:  Text('A product description is a form of marketing copy used to describe and explain the benefits of your product. In other words, it provides all the information and details of your product on your ecommerce site. These product details can be one sentence, a short paragraph or bulleted. They can be serious, funny or quirky.'),
                      ),
                      Container(
                        padding: EdgeInsets.all(20),
                        color: Color.fromARGB(255, 169, 160, 125),
                        child: Text('A product description is a form of marketing copy used to describe and explain the benefits of your product. In other words, it provides all the information and details of your product on your ecommerce site. These product details can be one sentence, a short paragraph or bulleted. They can be serious, funny or quirky.'),
                      ),
                      Container(
                        width: double.maxFinite,
                        padding: EdgeInsets.all(20),
                        color: Color.fromARGB(255, 169, 160, 125),
                        child: 
                        ElevatedButton(onPressed: (){},
                        style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(AppColors.blueShade_1)
                        ),
                          child: Text('Add to card')),
                      ),


                    ],
                  ),
                ),
              );
             }
             ),
           )
            
          ],
        ),
      ),
    );
  }
}



// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('DraggableScrollableSheet'),
//       ),
//       body: SizedBox.expand(
//         child: DraggableScrollableSheet(
//           builder: (BuildContext context, ScrollController scrollController) {
//             return Container(
//               color: Colors.blue[100],
//               child: ListView.builder(
//                 controller: scrollController,
//                 itemCount: 25,
//                 itemBuilder: (BuildContext context, int index) {
//                   return ListTile(title: Text('Item $index'));
//                 },
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }