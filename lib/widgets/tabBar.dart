import 'package:birinchi_proyekt/itemsOfTabBar/channel.dart';
import 'package:birinchi_proyekt/itemsOfTabBar/group.dart';
import 'package:birinchi_proyekt/itemsOfTabBar/private.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TabBarExample extends StatefulWidget {
  const TabBarExample({Key? key}) : super(key: key);

  @override
  State<TabBarExample> createState() => _TabBarExampleState();
}

class _TabBarExampleState extends State<TabBarExample> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Ilmhub.uz'),
        bottom: TabBar(
          indicatorColor: Colors.white,
            labelColor: Colors.black,
            indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(90),
                color: Colors.white),
            unselectedLabelColor: Colors.white,
            //indicatorWeight: 3.0,

            tabs: [
              Tab(text: 'Private',),
              Tab(text: 'Group',),
              Tab(text: 'Chanel',)
            ]),

        ),
        body: TabBarView(
          children: [
            PrivatePage(),
            GroupPage(),
            ChannelPage()
          ],

        ),

      ),
    );
  }
}
