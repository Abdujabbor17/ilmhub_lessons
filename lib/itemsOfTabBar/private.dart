import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PrivatePage extends StatelessWidget {
  const PrivatePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      child: Center(
        child:Text('Private Page'),
      ),
    );
  }
}
