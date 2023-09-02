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
      body: Center(child: Text('Helo'),),
    );
  }
}