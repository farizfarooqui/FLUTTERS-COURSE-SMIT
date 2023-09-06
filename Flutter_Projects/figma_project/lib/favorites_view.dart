import 'package:figma_project/colors.dart';
import 'package:flutter/material.dart';

class Favorite_view extends StatefulWidget {
  const Favorite_view({super.key});

  @override
  State<Favorite_view> createState() => _Favorite_viewState();
}

class _Favorite_viewState extends State<Favorite_view> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          ListTile(
            tileColor: AppColors.black_20,
            title: Text('No Favorite Items',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400,

            ),),
          )
        ],
      ),
    );
  }
}