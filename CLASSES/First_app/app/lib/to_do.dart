import 'package:flutter/material.dart';

class todo extends StatefulWidget {
  const todo({super.key});

  @override
  State<todo> createState() => _todoState();
}

// ignore: camel_case_types
class _todoState extends State<todo> {

  void _showTemporaryMessage(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Center(child: Text('Task Deleted !')),
        duration: Duration(seconds: 1),
      ),
    );
  }

  
  void _showTemporaryMessageOfNotification(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Center(child: Text('Notification Enable !')),
        duration: Duration(seconds: 1),
      ),
    );
  }




  List tasks = [ 'Learn Flutters','Practice Statfullclass',
  'Pray on time','Play Football','Gym' ];
  

  addtask() {
    setState(() {
              tasks.add(addTaskKacontroller.text);
              addTaskKacontroller.clear();
              _focusNode.unfocus();
            });
  }

  final FocusNode _focusNode = FocusNode();


  TextEditingController addTaskKacontroller = TextEditingController();
  // ignore: non_constant_identifier_names
  TextEditingController UpdateTaskKaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:const  Color.fromARGB(255, 122, 75, 4),
        leading: IconButton(onPressed: () {}, icon:const Icon(Icons.view_headline)),
        title: const Text('To Do List'),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {
            _showTemporaryMessageOfNotification(context);
          },
           icon:const Icon(Icons.add_alert_rounded))
        ],
      ),
      body: 
      Column(
        children: [
          Container(
            color: Colors.white,
            child: ListTile(
              title: TextField(
                cursorColor:const Color.fromARGB(255, 122, 75, 4),
                focusNode: _focusNode,
                controller: addTaskKacontroller,
                decoration: const InputDecoration(
                focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                color:  Color.fromARGB(255, 122, 75, 4), // Change the bottom line color when focused
                ),
              ),
                  hintText: 'Enter task here',
                ),
              ),
              trailing: ElevatedButton(
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 174, 106, 4))
                ),
                onPressed: () {
                addtask();
              },
              child: const Text('Add TAsk')),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: tasks.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.only(top: 10,left: 8, right: 8),
                  child: ListTile(
                    tileColor:Colors.orange.shade100,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40)
                    ),
                    leading: 
                    IconButton(onPressed: () {},
                       icon: const Icon(Icons.timer_sharp)),
                    title: Text(tasks[index]),
                    trailing: Wrap(
                      children: [
                        IconButton(onPressed: () {
                          UpdateTaskKaController.text = tasks[index];
                          showDialog(context: context, 
                           builder: (context) {
                            return AlertDialog(
                              title: const Text('Update task here !',
                              style :TextStyle(color:  Color.fromARGB(255, 122, 75, 4)),
                              textAlign: TextAlign.center) ,
                              content: TextField(
                              cursorColor: const Color.fromARGB(255, 122, 75, 4),
                              decoration: const InputDecoration(
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color.fromARGB(255, 122, 75, 4),
                                  )
                                ),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Color.fromARGB(255, 122, 75, 4),)
                                )
                              ),
                              controller: UpdateTaskKaController,
                              ),
                            actions: [
                              ElevatedButton(onPressed: () {
                                setState(() {
                                tasks[index]=UpdateTaskKaController.text;
                                UpdateTaskKaController.clear();
                                Navigator.pop(context);
                                }
                               );
                              },
                              style:const ButtonStyle(
                                backgroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 174, 106, 4))
                              ),
                               child:const Text('SAVE'))
                            ],
                            );
                          }
                         );
                        },
                        icon: const Icon(Icons.border_color_rounded)),

                        IconButton(onPressed: () {
                          setState(() {
                            tasks.removeAt(index);
                            _showTemporaryMessage(context);
                          });
                        }, icon: const Icon(Icons.delete)
                        ),
                      ],
                    ),
                  ),
                );
              }),
          ),
        ],
      ) ,
    );
  }
}
