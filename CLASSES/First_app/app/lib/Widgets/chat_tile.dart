import 'package:flutter/material.dart';

class chat_tile extends StatelessWidget {
  final String name , message , time;
  const chat_tile({super.key , required this.name, required this.message,required this.time});

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: const EdgeInsets.only(top: 4),
      child:const ListTile(
              tileColor: Color.fromARGB(255, 231, 222, 222),
              // minVerticalPadding: 30,
              leading: CircleAvatar(
              backgroundImage: AssetImage('assets/images/Profile_crop.jpeg'),
              radius: 30,
            ),
              title:Text('',
              style:  TextStyle(
              fontSize: 18,
              color: Colors.black,
              fontWeight: FontWeight.w400,
                                ),
                        ),
              subtitle: Text(''),
              trailing: Text(''),
                        titleAlignment: ListTileTitleAlignment.center
                    ),
    );
  }
}