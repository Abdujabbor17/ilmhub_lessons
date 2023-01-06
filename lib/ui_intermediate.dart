
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Intermediate extends StatefulWidget {
  const Intermediate({Key? key}) : super(key: key);

  @override
  State<Intermediate> createState() => _IntermediateState();
}

class _IntermediateState extends State<Intermediate> {
  var pageCtr = PageController();
  int index = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Intermediate'),),
      body: Center(
        child: PageView(
          controller: pageCtr,
          physics: NeverScrollableScrollPhysics(),
          children: [
            Container(
              color: Colors.green,
              child: Center(
                child: ElevatedButton(
                  onPressed: (){
                    if(Platform.isAndroid) return _androidDialog(context);
                    else if(Platform.isIOS) return _iOSDialog(context);

                  },
                  child: Text('Log out'),
                ),
              ),
            ),
            Container(
              color: Colors.red,
              child: Center(child: Text('Second Page'))
            ),
          ],

        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Profile'),
        ],
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black12,

        currentIndex: index,
        onTap: (int i){
          index = i;
          pageCtr.animateToPage(index,
              duration: Duration(milliseconds: 500), curve: Curves.easeIn);
          setState(() {
            
          });
        },
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              color: Colors.green.withOpacity(0.7),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 50,),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.asset('assets/images/123.jpg',height: 100,width: 100,
                      fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(
                       Icons.home,
                        color: Colors.grey,
                      ),
                      SizedBox(width: 10),
                      Text('Home')
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

 _androidDialog(BuildContext context){
  return showDialog(
      context: context,
      builder:(BuildContext context){
        return  AlertDialog(
          title: Text('Log out'),
          content: Text('Do you really want to log out?'),
          actions: [
            TextButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                child: Text('Cancel')),

            TextButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                child: Text('Confirm')),



          ],
        );
      }
  );
}

_iOSDialog(BuildContext context){
  return showDialog(
      context: context,
      builder:(BuildContext context){
        return CupertinoAlertDialog(
          title: Text('Log out'),
          content: Text('Do you really want to log out?'),
          actions: [
            TextButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                child: Text('Cancel')),

            TextButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                child: Text('Confirm')),



          ],
        );
      }
  );




}
