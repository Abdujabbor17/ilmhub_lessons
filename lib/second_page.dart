

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title:Text('Second Page')),
      body:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 200,
              width: 350,
              decoration: BoxDecoration(
                //color: Colors.red,
                borderRadius: BorderRadius.circular(30),
                gradient: LinearGradient(
                    colors: [
                      Colors.blue,
                      Colors.blue.withOpacity(0.5),
                    ]

                )
              ),

               child:const Center(
                child:  Text('bu container decoration'),
              ),
            ),
            ElevatedButton(
                onPressed: (){},
                child: Text('Button')),

            Container(
             // padding: EdgeInsets.only(left: 20,right: 5,top: 10,bottom: 30),
              height: 200,
              width: 300,
              color: Colors.red,
              child: Container(
                margin: EdgeInsets.all(10),
                color: Colors.blue,
              ),
            )
          ],
        ),

    );
  }
}
