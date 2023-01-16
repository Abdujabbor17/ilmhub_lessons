import 'package:birinchi_proyekt/todoList/todolist.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget itemOfTodoList(
    BuildContext context,
    String title,
    String text,
    String currentTime,
    void Function() delete,
    void Function() edit
    ) {
  return Container(
    height: 65,
    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 8),
    margin: EdgeInsets.symmetric(vertical: 5),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Color(0xFFffffff),
    ),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Colors.black),
            ),
            InkWell(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('Action'),
                          content: Text('What do you want?'),
                          actions: [
                            ElevatedButton(
                                onPressed: edit,
                                child: Text('Edit')),
                            ElevatedButton(
                                onPressed: delete,
                                child: Text('Delete')),
                          ],
                        );
                      });
                },
                child: Icon(
                  Icons.more_horiz,
                  color: Colors.black87,
                ))
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.black38),
            ),
            Text(
              currentTime,
              maxLines: 1,
              style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.black38),
            ),
          ],
        )
      ],
    ),
  );
}
