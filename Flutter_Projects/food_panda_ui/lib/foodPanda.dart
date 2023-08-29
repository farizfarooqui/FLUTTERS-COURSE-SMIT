import 'package:flutter/material.dart';
import 'package:food_panda_ui/fast_food.dart';
import 'package:food_panda_ui/popular_res.dart';

class foodPanda extends StatefulWidget {
  const foodPanda({super.key});

  @override
  State<foodPanda> createState() => _foodPandaState();
}

class _foodPandaState extends State<foodPanda> {

  TextEditingController sreachKaController = TextEditingController();

 List desiArr =['biryani','Haleem','biryani','Haleem','biryani','Haleem'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 240, 36, 104),
        shadowColor: Colors.transparent,
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.dehaze_outlined)),
        title:const Text('Practice'),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.favorite_border)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_bag_outlined))
        ]
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            Container(
              padding:const EdgeInsets.all(12),
              color: const Color.fromARGB(255, 240, 36, 104),
              child: ListTile(
                title: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: TextField(
                    controller: sreachKaController,
                    decoration: const InputDecoration(
                      icon: Icon(Icons.search,
                      color: Colors.white ,
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      focusColor: Colors.white,
                      hintText: 'Search here' ,
                      hintStyle: TextStyle(
                        color: Colors.black
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color:  Colors.white,
                          style: BorderStyle.solid
                        ),
                      )
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin:const EdgeInsets.all(20),
              child: const Image(image: AssetImage('assets/images/front_page.jpg')),
            ),
            const ListTile(
              title: Text('Fast Food', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              textColor: Colors.black,
              
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ElevatedButton(
                    style:const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.white)),
                    onPressed: () { 
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> fastfood()));
                     },
                    child: Container(
                      margin:const EdgeInsets.all(10),
                      color: Colors.amber,
                      height: 200,
                      width: 200,
                      child: Image.asset('assets/images/panda_row1.png'),
                    ),
                  ),
                  ElevatedButton(
                    style:const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.white)),
                    onPressed: () { 
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> fastfood()));
                     },
                    child: Container(
                      margin:const EdgeInsets.all(10),
                      color: Colors.amber,
                      height: 200,
                      width: 200,
                      child: Image.asset('assets/images/panda_row1.png'),
                    ),
                  ),
                  ElevatedButton(
                    style:const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.white)),
                    onPressed: () { 
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> fastfood()));
                     },
                    child: Container(
                      margin:const EdgeInsets.all(10),
                      color: Colors.amber,
                      height: 200,
                      width: 200,
                      child: Image.asset('assets/images/panda_row1.png'),
                    ),
                  ),
                  ElevatedButton(
                    style:const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.white)),
                    onPressed: () { 
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> fastfood()));
                     },
                    child: Container(
                      margin:const EdgeInsets.all(10),
                      color: Colors.amber,
                      height: 200,
                      width: 200,
                      child: Image.asset('assets/images/panda_row1.png'),
                    ),
                  ),
                  ElevatedButton(
                    style:const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.white)),
                    onPressed: () { 
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> fastfood()));
                     },
                    child: Container(
                      margin:const EdgeInsets.all(10),
                      color: Colors.amber,
                      height: 200,
                      width: 200,
                      child: Image.asset('assets/images/panda_row1.png'),
                    ),
                  ),
                ],
              ),
            ),
            const ListTile(
              title: Text('Popular restaurants', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              textColor: Colors.black,
              
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ElevatedButton(
                    style:const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.white)),
                    onPressed: () { 
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> popularRes()));
                     },
                    child: Container(
                      margin:const EdgeInsets.all(10),
                      color: Colors.amber,
                      height: 200,
                      width: 200,
                      child: Image.asset('assets/images/panda_row1.png'),
                    ),
                  ),
                 ElevatedButton(
                    style:const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.white)),
                    onPressed: () { 
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> popularRes()));
                     },
                    child: Container(
                      margin:const EdgeInsets.all(10),
                      color: Colors.amber,
                      height: 200,
                      width: 200,
                      child: Image.asset('assets/images/panda_row1.png'),
                    ),
                  ),
                  ElevatedButton(
                    style:const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.white)),
                    onPressed: () { 
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> popularRes()));
                     },
                    child: Container(
                      margin:const EdgeInsets.all(10),
                      color: Colors.amber,
                      height: 200,
                      width: 200,
                      child: Image.asset('assets/images/panda_row1.png'),
                    ),
                  ),
                  ElevatedButton(
                    style:const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.white)),
                    onPressed: () { 
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> popularRes()));
                     },
                    child: Container(
                      margin:const EdgeInsets.all(10),
                      color: Colors.amber,
                      height: 200,
                      width: 200,
                      child: Image.asset('assets/images/panda_row1.png'),
                    ),
                  ),
                  ElevatedButton(
                    style:const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.white)),
                    onPressed: () { 
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> popularRes()));
                     },
                    child: Container(
                      margin:const EdgeInsets.all(10),
                      color: Colors.amber,
                      height: 200,
                      width: 200,
                      child: Image.asset('assets/images/panda_row1.png'),
                    ),
                  ),
                ],
              ),
            ),
            const ListTile(
              title: Text('Panda Mart', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              textColor: Colors.black,
              
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    margin:const EdgeInsets.all(10),
                    color: Colors.amber,
                    height: 100,
                    width: 100,
                    child: Image.asset('assets/images/panda_mart.jpg'),
                  ),
                  Container(
                    margin:const EdgeInsets.all(10),
                    color: Colors.amber,
                    height: 100,
                    width: 100,
                    child: Image.asset('assets/images/panda_mart.jpg'),
                  ),
                 Container(
                    margin:const EdgeInsets.all(10),
                    color: Colors.amber,
                    height: 100,
                    width: 100,
                    child: Image.asset('assets/images/panda_mart.jpg'),
                  ),
                  Container(
                    margin:const EdgeInsets.all(10),
                    color: Colors.amber,
                    height: 100,
                    width: 100,
                    child: Image.asset('assets/images/panda_mart.jpg'),
                  ),
                  Container(
                    margin:const EdgeInsets.all(10),
                    color: Colors.amber,
                    height: 100,
                    width: 100,
                    child: Image.asset('assets/images/panda_mart.jpg'),
                  ),
                  Container(
                    margin:const EdgeInsets.all(10),
                    color: Colors.amber,
                    height: 100,
                    width: 100,
                    child: Image.asset('assets/images/panda_mart.jpg'),
                  ),
                ],
              ),
            )
          ],),
        ),
    );
  }
}