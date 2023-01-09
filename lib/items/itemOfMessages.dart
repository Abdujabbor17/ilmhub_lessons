import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget message(String image, String name, String time) {
  return Container(
    padding: EdgeInsets.all(12),
    height: 100,
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(40),
          child: Image.asset(image,
            fit: BoxFit.cover,
            height: 60,
            width: 60,),
        ),
        SizedBox(
          width: 12,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                      color: Colors.black),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  time,
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                      color: Colors.black54),
                ),
              ],
            ),

            Text('Hello, How are you man?',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Colors.black38
            ),
            )
          ],
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(
                size: 30.0,
                color: Colors.black38,
                Icons.chevron_right,
              ),
            ],
          ),
        )
      ],
    ),
  );
}
