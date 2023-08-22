import 'package:flutter/material.dart';




class ToDoList extends StatefulWidget {

void _showTemporaryMessage(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Message displayed for 2 seconds'),
        duration: Duration(seconds: 2), // Display for 2 seconds
      ),
    );
  }

  const ToDoList({super.key});

  @override
  State<ToDoList> createState() => _ToDoListState();
}

class _ToDoListState extends State<ToDoList> {
  List tasks = [ 'Learn Flutters','Learn Flutters','Learn Flutters',
  'Learn Flutters','Learn Flutters','Learn Flutters','Learn Flutters',
  'Learn Flutters','Learn Flutters','Learn Flutters','Learn Flutters',
  'Learn Flutters','Learn Flutters', 'Learn Flutters','Learn Flutters',
  'Learn Flutters','Learn Flutters' ];

// ignore: non_constant_identifier_names
AddTask()  {
  setState(() {
    tasks.add(addTaskController);
  });
}
TextEditingController addTaskController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          ElevatedButton(onPressed: () {  AddTask();  },
              style:ButtonStyle( backgroundColor: MaterialStateProperty.all<Color>(const Color.fromARGB(255, 6, 88, 155)),),
              child: const Text('Add Task'),
              ),
        ],
      ),

      body: ListView.builder(
            itemCount:tasks.length ,
            itemBuilder: (context, index) {
            return ListTile(
              leading:const Icon(Icons.access_time_rounded),
              tileColor:const Color.fromARGB(255, 185, 228, 250),
              title: Text(tasks[index]),
              trailing: IconButton(onPressed: () {
                setState(() {
                  tasks.removeAt(index);
                });
              },
              icon:const Icon(Icons.delete_rounded)),                        
            );
          }
        )
      );
    
  }
}