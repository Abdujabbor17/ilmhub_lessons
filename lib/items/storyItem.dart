

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget story(){
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 5),
    height: 250,
    width: 150,
    child: Stack(
      children: [
        SizedBox(
          height:250,
          width: 150,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset('assets/photo_2019-11-12_21-40-23.jpg',
            fit: BoxFit.cover,
            ),
          ),

        ),

        Container(
          height:250,
          width: 150,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    Colors.black54,
                    Colors.black12,
                  ]

              )
          ),
        ),
        Positioned(
            bottom: 20,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                'Name',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20
                ),
              ),
            )
        )
      ],
    ),
  );
}