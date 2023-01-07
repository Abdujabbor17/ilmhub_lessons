



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget itemOfList(String image,String name){
  return Container(
    margin: EdgeInsets.symmetric(vertical: 8),
    height: 100,
    child: Row(
      children: [
        Image.asset(image),
        SizedBox(width: 10,),
        Text(name,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w700,
          color: Colors.black
        ),
        )
      ],
    ),
  );
}