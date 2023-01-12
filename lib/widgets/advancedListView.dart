import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../items/storyItem.dart';


class ListViewAdvanced extends StatefulWidget {
  const ListViewAdvanced({Key? key}) : super(key: key);

  @override
  State<ListViewAdvanced> createState() => _ListViewAdvancedState();
}

class _ListViewAdvancedState extends State<ListViewAdvanced> {
  bool isClick = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('GridView'),),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Story',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.w600
              ),
              ),
              SizedBox(height: 20,),
              SizedBox(
                height: 250,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context,index){
                      return story();
                    },
                    separatorBuilder: (BuildContext context, int index) =>
                     Container(
                       height: 10,width: 3,color: Colors.red,
                     ),
                ),
              ),
              SizedBox(height: 15,),
              InkWell(
                onTap: (){
                  isClick = !isClick;
                  setState(() {});
                },
                child: Text(
                  'Posts',
                  style: TextStyle(
                      fontSize: 20,
                      color: isClick ? Colors.red : Colors.black,
                      fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(
                height: 120*5,
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 5,
                    itemBuilder: (context,index){
                      return Container(
                        height: 100,
                        margin: EdgeInsets.symmetric(vertical: 10),
                        color: Colors.green,
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
