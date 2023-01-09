

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget call(String name){
  return Container(
    padding: EdgeInsets.all(10),
    height: 100,
    color: Colors.white,
    child: Row(
      children: [
        Container(
          height: 70,
          width: 70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(35),
            color: Colors.blue
          ),
          child: Center(
            child: Text(
              name[0],
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 20
              ),
            ),
          ),

        ),
        SizedBox(width: 15,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(name,
              style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.w700,
                  fontSize: 20
              ),
            ),
            SizedBox(height: 5),
            Text(name + '@gmail.com',
              style: TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.w500,
                  fontSize: 18
              ),
            ),
          ],
        )
      ],
    ),
  );
}