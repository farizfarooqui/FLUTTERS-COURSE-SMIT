import 'package:flutter/material.dart';

class FavouriteView extends StatefulWidget {
  const FavouriteView({super.key});

  @override
  State<FavouriteView> createState() => _FavouriteViewState();
}

class _FavouriteViewState extends State<FavouriteView> {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title:const Text('Favourite Items'),
      ),
      body: Container(
        margin:const EdgeInsets.all(6),
        child: ListView.builder(
          // itemCount: FavoriteItems.length,
          itemBuilder: (BuildContext, int index) {
          return Container(
            margin: EdgeInsets.all(6),
            child: ListTile(
              tileColor: Color.fromARGB(255, 181, 224, 182),
              // title: Text(FavoriteItems[index]),
            ),
          );
        }),
      ),
    );
  }
}