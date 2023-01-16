import 'dart:core';

import 'package:birinchi_proyekt/todoList/todolist.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EditItem extends StatefulWidget {

  String title;
  String text;
  int index;

   EditItem({
     required this.title,
     required this.text,
     required this.index,
     Key? key}) : super(key: key);


  @override
  State<EditItem> createState() => _EditItemState();
}

class _EditItemState extends State<EditItem> {


  var titleEditCtr = TextEditingController();
  var textEditCtr = TextEditingController();

  @override
  void initState() {
    titleEditCtr.text = widget.title;
    textEditCtr.text = widget.text;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Add Item'),),
        body: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Title',
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black54
                ),
              ),
              const SizedBox(height: 10,),
              TextFormField(
                controller: titleEditCtr,
                decoration: const InputDecoration(
                  hintText: 'Enter title',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(15.0),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 16,),
              const Text('Your text',
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black54
                ),
              ),
              SizedBox(height: 10,),
              TextFormField(
                controller: textEditCtr,
                decoration: const InputDecoration(
                  hintText: 'Enter Your text',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(15.0),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      onPressed: (){
                        Navigator.pop(context);
                      },
                      child: const Text('Back')),
                  ElevatedButton(
                      onPressed: (){
                        var hour = DateTime.now().hour;
                        var minut = DateTime.now().minute;
                        String currentTime = 'edited $hour:$minut';

                        list[widget.index] = {
                          'title': titleEditCtr.text,
                          'text': textEditCtr.text,
                          'time': currentTime
                        };
                        //setState(() {});
                        Navigator.of(context)
                            .pushNamedAndRemoveUntil('/ToDoList',
                                (Route<dynamic> route) => false);

                      },
                      child: Text('Save'))

                ],
              )


            ],
          ),
        )
    );
  }
}
