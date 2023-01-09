



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget itemOfListHorizontal(String image,String name){
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 8),
    height: 100,
    width: 100,
    child: Column(
      children: [
        Image.asset(image, height: 100,width: 100,),
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