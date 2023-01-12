import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../items/itemOfCalls.dart';


class GridviewExp extends StatefulWidget {
  const GridviewExp({Key? key}) : super(key: key);

  @override
  State<GridviewExp> createState() => _GridviewExpState();
}

class _GridviewExpState extends State<GridviewExp> {
  var names = [
    'Abror',
    'G\'olib',
    'Asadbek',
    'Bahrom',
    'Faxriddin',
    'Abduqodir',
    'Farhod',
    'Muhammad'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 220,
            snap: true,
            floating: true,
            pinned: true,
            //elevation: 0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Ilmhub.uz'),
              centerTitle: true,
              background: Image(
                image: AssetImage('assets/images/panda.jpg'),
              fit: BoxFit.cover,
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate(
                childCount: 8,
              (context,index){
                return call(names[index]);
              }

          ))
        ],

      ),
    );
  }
}


Widget call1(String name){
  return Container(
    padding: EdgeInsets.all(10),
    child: Text(name),
  );
}
// GridView.builder(
// itemCount: 16,
// gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
// crossAxisCount: 2,
// crossAxisSpacing: 6.0,
// mainAxisSpacing: 10.0),
// itemBuilder: (BuildContext context, int index) {
// return Container(
// //width: double.infinity,
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(8),
// image: DecorationImage(
// image: AssetImage('assets/images/android.jpg'))),
// );
// },
// ),