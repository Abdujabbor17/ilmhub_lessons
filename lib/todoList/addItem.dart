import 'package:birinchi_proyekt/todoList/todolist.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddItem extends StatefulWidget {
  const AddItem({Key? key}) : super(key: key);

  @override
  State<AddItem> createState() => _AddItemState();
}

class _AddItemState extends State<AddItem> {
  var titleCtr = TextEditingController();
  var textCtr = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Add Item'),),
      body: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Title',
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.black54
              ),
            ),
            SizedBox(height: 10,),
            TextFormField(
              controller: titleCtr,
                decoration: InputDecoration(
                  hintText: 'Enter title',
                  border: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(15.0),
                    ),
                  ),
                ),
              ),

            SizedBox(height: 16,),
            Text('Your text',
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.black54
              ),
            ),
            SizedBox(height: 10,),
             TextFormField(
               controller: textCtr,
                        decoration: InputDecoration(
                          hintText: 'Enter Your text',
                          border: OutlineInputBorder(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(15.0),
                            ),
                          ),
                        ),
                      ),
            SizedBox(height: 16,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: (){
                      Navigator.pop(context);
                    },
                    child: Text('Back')),
                ElevatedButton(
                    onPressed: (){
                      var hour = DateTime.now().hour;
                      var minut = DateTime.now().minute;
                      String currentTime = '$hour:$minut';
                      list.add({
                        'title': titleCtr.text,
                        'text': textCtr.text,
                        'time': currentTime
                      });
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
