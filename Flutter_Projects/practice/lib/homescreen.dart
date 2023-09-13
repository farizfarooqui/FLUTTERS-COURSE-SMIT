import 'package:flutter/material.dart';
import 'package:practice/cartscreen.dart';
import 'package:practice/favourite.dart';
import 'data.dart';

class HomeView extends StatefulWidget {

  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

 List<String> FavoriteItems = ['Biryani'];

 List<String> CardItems = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card Items(${CardItems.length})'),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: Products.length,
        itemBuilder: (BuildContext , index)
         {
        return Container(
          margin:const EdgeInsets.only(top: 15,left: 8,right: 8),
          child: ListTile(
            title: Text(Products[index]['name']),
            subtitle: Text(Products[index]['price']),
            tileColor:const Color.fromARGB(255, 250, 210, 207),
            trailing: IconButton(onPressed: () {
              setState(() {
                          CardItems.add(Products[index]);
                          });
            }, 
            // icon: Icon(Icons.favorite)),
            icon: Icon(Icons.add)),
          ),
        );
      }
      ),
      floatingActionButton: Row(
        children: [
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (BuildContext) => FavouriteView()));
          }, 
          child: Text('Favourites')),
          ElevatedButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (BuildContext) => CardView(Items: CardItems,)));
         }, 
          child: Text('View Card')),
        ],
      ),
      
      
    );
  }
}