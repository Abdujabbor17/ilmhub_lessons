import 'package:birinchi_proyekt/items/itemOfList.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'items/itemOfListHorizontal.dart';

class Lists extends StatefulWidget {
  const Lists({Key? key}) : super(key: key);

  @override
  State<Lists> createState() => _ListsState();
}

class _ListsState extends State<Lists> {

  var list = [
    'Abror',
    'Farrux',
    'Javlon',
    'Javox',
    'Nodir'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Lists'),),
      body: Padding(
        padding: EdgeInsets.all(24),
        child: SizedBox(
          height: 150,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: list.length,
              itemBuilder: (context,index){
              // return itemOfList('assets/images/123.jpg', list[index]);  //Bu vertikal listView
            return itemOfListHorizontal('assets/images/123.jpg', list[index]); // bu gorizontal listView
          }),
        )
      )
    );
  }
}


// ListView(
// children: [
// itemOfList('assets/images/123.jpg', 'Abror _______1'),
// itemOfList('assets/images/123.jpg', 'Abror _______2'),
// itemOfList('assets/images/123.jpg', 'Abror _______3'),
// itemOfList('assets/images/123.jpg', 'Abror _______4'),
// itemOfList('assets/images/123.jpg', 'Abror _______5'),
// itemOfList('assets/images/123.jpg', 'Abror _______1'),
// itemOfList('assets/images/123.jpg', 'Abror _______2'),
// itemOfList('assets/images/123.jpg', 'Abror _______3'),
// itemOfList('assets/images/123.jpg', 'Abror _______4'),
// itemOfList('assets/images/123.jpg', 'Abror _______5'),
//
//
// ],
// ),