import 'package:birinchi_proyekt/todoList/itemOfTodoList.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'addItem.dart';

class ToDoList extends StatefulWidget {
  const ToDoList({Key? key}) : super(key: key);

  @override
  State<ToDoList> createState() => _ToDoListState();
}

class _ToDoListState extends State<ToDoList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My Tasks'),),
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
              index
          );
        }),
      ),
      floatingActionButton: FloatingActionButton(

        onPressed: () {
          Navigator.pushNamed(context, '/AddItem');

        },
        child: Icon(Icons.add),
      ),
    );
  }
}


List<Map<String,String>> list = [];