import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  String txt = 'Karta';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Second Page')),
      // body: Column(
      //   mainAxisAlignment: MainAxisAlignment.start,
      //   crossAxisAlignment: CrossAxisAlignment.start,
      // children: [
      //   Expanded(
      //     child:
      //     Container(
      //       color: Colors.blue,
      //       padding:  EdgeInsets.all (10),
      //       child: Container(
      //         margin: EdgeInsets.all(10),
      //         color: Colors.lightBlueAccent,
      //         child: Row(
      //           mainAxisAlignment: MainAxisAlignment.start,
      //           crossAxisAlignment: CrossAxisAlignment.start,
      //           children:[
      //           Container(
      //             height:100,
      //             width: 100,
      //
      //             margin: EdgeInsets.all(10),
      //             child: Container(
      //               color: Colors.green,
      //             ),
      //           ),
      //             Container(
      //               height:100,
      //               color: Colors.black,
      //               width: 100,
      //               padding:  EdgeInsets.all (10),
      //               margin: EdgeInsets.all(10),
      //               child: Container(
      //                 color: Colors.green,
      //               ),
      //             ),
      //             Container(
      //               height:100,
      //               color: Colors.black,
      //               width: 100,
      //               padding:  EdgeInsets.all (10),
      //               margin: EdgeInsets.all(10),
      //               child: Container(
      //                 color: Colors.green,
      //               ),
      //             ),
      //           ],
      //         ),
      //       ),
      //     ),
      //   ),
      // ],
      // ),
      body: Container(
        width: double.infinity,
        height: 120,
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 8),
        padding: EdgeInsets.only(left: 15, right: 15, top: 20, bottom: 20),
        color: Colors.blue,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () {
                    print('clicked');
                    setState(() {
                      txt = 'Clicked';
                    });
                  },
                  child: Text(
                    txt,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: Colors.black54,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Transport kartasi',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            /*Container(
              height: 50,
              width: 120,

              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
                border: Border.all(width: 2, color: Colors.red),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 5,
                    spreadRadius: 2,
                    color: Colors.green,
                    offset: Offset(0,-0)
                )]
              ),
              child: Center(
                child: Text(
                  'Qo\'shish',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 22,
                    fontWeight: FontWeight.w500
                  ),
                ),
              ),
            )*/

            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/AddPage");
              },
              style: ButtonStyle(
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                          side: BorderSide(color: Colors.white)))),
              child: Text(
                'Qo\'shish',
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 22,
                    fontWeight: FontWeight.w500),
              ),
            )
          ],
        ),
      ),
    // body: Container(
    // width: double.infinity,
    // height: double.infinity,
    // color: Colors.white,
    // margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
    // padding: EdgeInsets.all(10),
    // ),
    );
  }
}
