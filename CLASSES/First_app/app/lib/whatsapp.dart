import 'package:flutter/material.dart';

class whatsapp extends StatelessWidget {
  const whatsapp({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: false,
        title: const Text(' WhatsApp'),
        backgroundColor:const Color.fromRGBO(7, 75, 9, 0.525),
        shadowColor:const Color.fromARGB(255, 2, 86, 11),
        actions: [
          IconButton(
          onPressed: () {},
          icon: const Icon(Icons.search),
          ),
          IconButton(
          onPressed: () {},
          icon: const Icon(Icons.chat),
          ),
          IconButton(
          onPressed: () {},
          icon: const Icon(Icons.more_vert),
          ),
        ],
      ),
      body:
      
      ListView(
        children: [
          Column(children: [
            Container(
          margin: const EdgeInsets.only(top: 4),
          child:const ListTile(
                  tileColor: Color.fromARGB(255, 231, 222, 222),
                  // minVerticalPadding: 30,
                  leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/elon.jpg'),
                  radius: 30,
                ),
                  title:Text('Elon',
                  style:  TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                                    ),
                            ),
                  subtitle: Text('jani thore paise chayei dega?'),
                  trailing: Text('2:45 AM'),
                            titleAlignment: ListTileTitleAlignment.center
                        ),
            ),
            Container(
          margin: const EdgeInsets.only(top: 4),
          child:const ListTile(
                  tileColor: Color.fromARGB(255, 231, 222, 222),
                  // minVerticalPadding: 30,
                  leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/Ronaldo.jpg'),
                  radius: 30,
                ),
                  title:Text('Ronaldo',
                  style:  TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                                    ),
                            ),
                  subtitle: Text('jani meri team se khelyga ajj tu'),
                  trailing: Text('7:56 PM'),
                            titleAlignment: ListTileTitleAlignment.center
                        ),
            ),
            Container(
          margin: const EdgeInsets.only(top: 4),
          child:const ListTile(
                  tileColor: Color.fromARGB(255, 231, 222, 222),
                  // minVerticalPadding: 30,
                  leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/messi.jpg'),
                  radius: 30,
                ),
                  title:Text('Messi',
                  style:  TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                                    ),
                            ),
                  subtitle: Text('Match hy 8 bajy ajana plzz'),
                  trailing: Text('6:56 AM'),
                            titleAlignment: ListTileTitleAlignment.center
                        ),
            ),
            Container(
          margin: const EdgeInsets.only(top: 4),
          child:const ListTile(
                  tileColor: Color.fromARGB(255, 231, 222, 222),
                  // minVerticalPadding: 30,
                  leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/Mark.jpg'),
                  radius: 30,
                ),
                  title:Text('Mark zingerburger',
                  style:  TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                                    ),
                            ),
                  subtitle: Text('call utha yar please????'),
                  trailing: Text('9:00 PM'),
                            titleAlignment: ListTileTitleAlignment.center
                        ),
                ),
                 Container(
          margin: const EdgeInsets.only(top: 4),
          child:const ListTile(
                  tileColor: Color.fromARGB(255, 231, 222, 222),
                  // minVerticalPadding: 30,
                  leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/andrew.jpg'),
                  radius: 30,
                ),
                  title:Text('Andrew tate',
                  style:  TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                                    ),
                            ),
                  subtitle: Text('jani bachi ni pat rhi kiya kron?'),
                  trailing: Text('2:45 AM'),
                            titleAlignment: ListTileTitleAlignment.center
                        ),
            ),
            Container(
          margin: const EdgeInsets.only(top: 4),
          child:const ListTile(
                  tileColor: Color.fromARGB(255, 231, 222, 222),
                  // minVerticalPadding: 30,
                  leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/salmon.jpg'),
                  radius: 30,
                ),
                  title:Text('Salmoon boi',
                  style:  TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                                    ),
                            ),
                  subtitle: Text('Bigboss aja yr? TRP chayei thori'),
                  trailing: Text('7:56 PM'),
                            titleAlignment: ListTileTitleAlignment.center
                        ),
            ),
            Container(
          margin: const EdgeInsets.only(top: 4),
          child:const ListTile(
                  tileColor: Color.fromARGB(255, 231, 222, 222),
                  // minVerticalPadding: 30,
                  leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/jinnah.jpg'),
                  radius: 30,
                ),
                  title:Text('Quaid',
                  style:  TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                                    ),
                            ),
                  subtitle: Text('bskr walon Baja liye bajee?'),
                  trailing: Text('6:56 AM'),
                            titleAlignment: ListTileTitleAlignment.center
                        ),
            ),
            Container(
          margin: const EdgeInsets.only(top: 4),
          child:const ListTile(
                  tileColor: Color.fromARGB(255, 231, 222, 222),
                  // minVerticalPadding: 30,
                  leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/bhao.jpg'),
                  radius: 30,
                ),
                  title:Text('Bhuao',
                  style:  TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                                    ),
                            ),
                  subtitle: Text('ayy reply kr naa'),
                  trailing: Text('9:00 PM'),
                            titleAlignment: ListTileTitleAlignment.center
                        ),
                ),
                Container(
          margin: const EdgeInsets.only(top: 4),
          child:const ListTile(
                  tileColor: Color.fromARGB(255, 231, 222, 222),
                  // minVerticalPadding: 30,
                  leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/jinnah.jpg'),
                  radius: 30,
                ),
                  title:Text('Quaid',
                  style:  TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                                    ),
                            ),
                  subtitle: Text('b***walon Bajaa liye bajay?'),
                  trailing: Text('6:56 AM'),
                            titleAlignment: ListTileTitleAlignment.center
                        ),
            ),
            Container(
          margin: const EdgeInsets.only(top: 4),
          child:const ListTile(
                  tileColor: Color.fromARGB(255, 231, 222, 222),
                  // minVerticalPadding: 30,
                  leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/jinnah.jpg'),
                  radius: 30,
                ),
                  title:Text('Quaid',
                  style:  TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                                    ),
                            ),
                  subtitle: Text('b***walon Bajaa liye bajay?'),
                  trailing: Text('6:56 AM'),
                            titleAlignment: ListTileTitleAlignment.center
                        ),
            ),
            Container(
          margin: const EdgeInsets.only(top: 4),
          child:const ListTile(
                  tileColor: Color.fromARGB(255, 231, 222, 222),
                  // minVerticalPadding: 30,
                  leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/jinnah.jpg'),
                  radius: 30,
                ),
                  title:Text('Quaid',
                  style:  TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                                    ),
                            ),
                  subtitle: Text('b***walon Bajaa liye bajay?'),
                  trailing: Text('6:56 AM'),
                            titleAlignment: ListTileTitleAlignment.center
                        ),
            ),
            Container(
          margin: const EdgeInsets.only(top: 4),
          child:const ListTile(
                  tileColor: Color.fromARGB(255, 231, 222, 222),
                  // minVerticalPadding: 30,
                  leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/jinnah.jpg'),
                  radius: 30,
                ),
                  title:Text('Quaid',
                  style:  TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                                    ),
                            ),
                  subtitle: Text('b***walon Bajaa liye bajay?'),
                  trailing: Text('6:56 AM'),
                            titleAlignment: ListTileTitleAlignment.center
                        ),
            ),
            Container(
          margin: const EdgeInsets.only(top: 4),
          child:const ListTile(
                  tileColor: Color.fromARGB(255, 231, 222, 222),
                  // minVerticalPadding: 30,
                  leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/jinnah.jpg'),
                  radius: 30,
                ),
                  title:Text('Quaid',
                  style:  TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                                    ),
                            ),
                  subtitle: Text('b***walon Bajaa liye bajay?'),
                  trailing: Text('6:56 AM'),
                            titleAlignment: ListTileTitleAlignment.center
                        ),
            ),
            Container(
          margin: const EdgeInsets.only(top: 4),
          child:const ListTile(
                  tileColor: Color.fromARGB(255, 231, 222, 222),
                  // minVerticalPadding: 30,
                  leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/jinnah.jpg'),
                  radius: 30,
                ),
                  title:Text('Quaid',
                  style:  TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                                    ),
                            ),
                  subtitle: Text('b***walon Bajaa liye bajay?'),
                  trailing: Text('6:56 AM'),
                            titleAlignment: ListTileTitleAlignment.center
                        ),
            ),
            Container(
          margin: const EdgeInsets.only(top: 4),
          child:const ListTile(
                  tileColor: Color.fromARGB(255, 231, 222, 222),
                  // minVerticalPadding: 30,
                  leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/jinnah.jpg'),
                  radius: 30,
                ),
                  title:Text('Quaid',
                  style:  TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                                    ),
                            ),
                  subtitle: Text('b***walon Bajaa liye bajay?'),
                  trailing: Text('6:56 AM'),
                            titleAlignment: ListTileTitleAlignment.center
                        ),
            ),
            Container(
          margin: const EdgeInsets.only(top: 4),
          child:const ListTile(
                  tileColor: Color.fromARGB(255, 231, 222, 222),
                  // minVerticalPadding: 30,
                  leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/jinnah.jpg'),
                  radius: 30,
                ),
                  title:Text('Quaid',
                  style:  TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                                    ),
                            ),
                  subtitle: Text('b***walon Bajaa liye bajay?'),
                  trailing: Text('6:56 AM'),
                            titleAlignment: ListTileTitleAlignment.center
                        ),
            ),
          ]),
        ],
      ),
    );
  }
}