import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class whatsapp3 extends StatelessWidget {
  const whatsapp3({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 4,
       child: Scaffold(
         appBar: AppBar(
          toolbarHeight: 76,
          title: const Text(' WhatsApp'),
          shadowColor: const Color.fromARGB(255, 19, 18, 18),
          backgroundColor:const Color.fromARGB(133, 11, 67, 13),
          actions: [
            IconButton(onPressed: () {},
            icon: const Icon(Icons.search),
            ),
            IconButton(onPressed: () {},
            icon: const Icon(Icons.more_vert),
            )
          ],
        ),
        body:const Column(
          children: [
            TabBar(
              labelColor: Color.fromARGB(255, 26, 67, 27),
              tabs: [
                Tab(
                icon: Icon(
                  Icons.add_a_photo_outlined,
                  color : Color.fromARGB(133, 11, 67, 13),
              ),
            ),
                 Tab(
                  text: 'Chat',
                  
                ),
                Tab(
                  text: 'Status',
                ),
                Tab(
                  text: 'Call',
                ),
              ]
            ),
          ],
          
        ),
      )
    );
  }
}