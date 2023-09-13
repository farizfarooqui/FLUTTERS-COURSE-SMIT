import 'package:flutter/material.dart';
import 'data.dart';

class CardView extends StatefulWidget {
  final List Items;
  const CardView({super.key, required this.Items});

  @override
  State<CardView> createState() => _CardViewState();
}
class _CardViewState extends State<CardView> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title : Text("My Shopping Cart"),
      ),
      body: Container(
        margin: EdgeInsets.all(6),
        child: ListView.builder(
          itemCount: widget.Items.length,
          itemBuilder: (Context, index) {
          return Container(
            margin: EdgeInsets.all(6),
            child: ListTile(
              title: Text(widget.Items[index]['name']),
              subtitle: Text(widget.Items[index]['price']),
              tileColor: const Color.fromARGB(255, 246, 230, 185),
            ),
          );
        }),
      ),
    );
  }
}