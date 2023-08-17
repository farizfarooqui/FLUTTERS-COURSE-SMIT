import 'package:flutter/material.dart';

List arrOfURL = ['assets/images/jinnah.jpg',
                 'assets/images/elon.jpg',
                 'assets/images/Ronaldo.jpg',
                 'assets/images/messi.jpg',
                 'assets/images/Mark.jpg',
                 'assets/images/andrew.jpg',
                 'assets/images/salmon.jpg',
                 'assets/images/bhao.jpg',
                 'assets/images/sachin.jpg',
                 'assets/images/munna.jpg',
                 'assets/images/tiger.jpg',
                 'assets/images/meme.png'
                 ];
List arrOfNames = ['Quaid', 'Elon','Cristiano','Renoinal Messi','Mark Zingerburger', 'Andrew Tate','Salmon boi', 'Bhauo','Sachin Bhai','Munna bhai','Tiger','Sharmela'];
List arrOfMsg = ['b***walon Baja liye bajee?',
                  'jani thore paise chayei dega?',
                  'jani meri team se khelyga ajj tu',
                  'Match hy 8 bajy ajana plzz',
                  'call utha yar please????',
                  'jani bachi ni pat rhi kiya kron?',
                  'Bigboss aja yr? TRP chayei thori', 
                  'I love Pakistan',
                  'Bat ka grip na...',
                  'Nahi...',
                  'choti bachi ho kiya?',
                  "chai pee lo.."
                  ];
List arrOfTime = ['now','10:41 PM','11:45 AM','9:55 PM','6:45 AM','Today','Yesterday','9:45 pm','8:44 pm','3:43 pm','Yesterday','Yesterday','Yesterday'];

// ignore: camel_case_types
class whatsapp2 extends StatelessWidget {
  const whatsapp2({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
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
          bottom: const TabBar(tabs: [
              Tab( icon: Icon(Icons.add_a_photo_outlined),),
              // Tab( icon: Icon(Icons.chat),),
              Tab(text: 'Chat',),
              Tab(text: 'Status',),
              Tab(text: 'Call',),

              // Tab( icon: Icon(Icons.ads_click_rounded),),
              // Tab(icon: Icon(Icons.add_ic_call),)
          ])
        ),
        body: ListView.builder(
          itemCount:arrOfNames.length,
          itemBuilder: (context, index ) {
            return Container(
              margin:const EdgeInsets.only(top: 4),
              child: ListTile(
                tileColor: const Color.fromARGB(255, 241, 231, 231),
                leading: CircleAvatar(
                  radius: 33,
                  backgroundImage: AssetImage(arrOfURL[index]),
                  ),
                title: Text(arrOfNames[index],
                style: const TextStyle(fontSize: 18,
                fontWeight:FontWeight.w400
                ),
                ),
                subtitle: Text(arrOfMsg[index]),
                trailing: Text(arrOfTime[index]),
              ),
            );
          },
        )
      ),
    );
  }
}