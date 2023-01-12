

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget itemOfTodoList(String title,String text,String currentTime){
  return Container(
    height: 65,
    padding: EdgeInsets.symmetric(horizontal: 5,vertical: 8),
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
              color: Colors.black
            ),
            ),
            Icon(Icons.more_horiz,color: Colors.black87,)
          ],
        ),
        SizedBox(height: 5,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 300,
              child: Text(
                text,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.black38
                ),
              ),
            ),
            Text(
              currentTime,
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.black38
              ),
            ),
          ],
        )
      ],
    ),
  );
}