import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {});
      _counter++;
      print(_counter);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ilmhub'),
      ),
      body: Column(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children: [
             Container(
               height: 200,
               width: double.infinity,
               color: Colors.red,
               child: const Center(
                 child: Text('Abror',
                 style: TextStyle(
                   color: Colors.white,
                   fontSize: 28
                 ),
                 ),
               ),
             ),
             Container(
               height: 200,
               width: double.infinity,
               color: Colors.yellow,
               child: const Center(
                 child: Text('Golibjon',
                   style: TextStyle(
                       color: Colors.red,
                       fontSize: 28
                   ),
                 ),
               ),
             ),
              Container(
                height: 200,
               width: double.infinity,
               color: Colors.green.withOpacity(0.5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: double.infinity,
                        width: 100,
                        color: Colors.blue,
                      ),
                      Container(
                        height: double.infinity,
                        width: 100,
                        color: Colors.grey,
                      ),
                  Container(
                    height: double.infinity,
                    width: 100,
                    color: Colors.pink,
                  ),
                ],
                  )
             ),


           ],

        ),






      /*Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'bu knopkani necha marta bosganingiz',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
             const Text(
              'Abror',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Text('Bu Row',
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 34,
                  fontWeight: FontWeight.w600

                ),
                ),
                Text('Golibjon',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.w600

                  ),
                ),

              ],
            )
          ],
        ),
      ),*/
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
