import 'package:birinchi_proyekt/todoList/editItem.dart';
import 'package:birinchi_proyekt/todoList/itemOfTodoList.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class ToDoList extends StatefulWidget {
  const ToDoList({Key? key}) : super(key: key);

  @override
  State<ToDoList> createState() => _ToDoListState();
}

class _ToDoListState extends State<ToDoList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('My Tasks'),),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: list.length,
            itemBuilder: (context,index){
          return itemOfTodoList(
            context,
              list[index]['title']!,
              list[index]['text']!,
              list[index]['time']!,
              (){
              list.removeAt(index);
              Navigator.pop(context);
              setState(() {});
              }, //delete button
              (){
              Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(
                        builder: (context) => EditItem(
                        title: list[index]['title']!,
                        text: list[index]['text']!,
                        index: index)
                    )
                );
              }
          );
        }),
      ),
      floatingActionButton: FloatingActionButton(

        onPressed: () {
          Navigator.pushNamed(context, '/AddItem');

        },
        child: const Icon(Icons.add),
      ),
    );
  }
}


List<Map<String,String>> list = [];