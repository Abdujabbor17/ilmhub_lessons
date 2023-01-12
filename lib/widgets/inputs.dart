import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Inputs extends StatefulWidget {
  const Inputs({Key? key}) : super(key: key);

  @override
  State<Inputs> createState() => _InputsState();
}

class _InputsState extends State<Inputs> {
  var controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Inputs')),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Center(
          child: Column(
            children: [
              TextFormField(
               // readOnly: true,
                controller: controller,
                keyboardType: TextInputType.emailAddress,
                //maxLength: 9,
                //maxLines: 5,
                onChanged: (val){
                  //print(val);
                },
                onFieldSubmitted: (val){
                  print(val);
                  setState(() {});
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  hintText: 'email',
                  fillColor: Colors.amber,
                  prefixIcon: Icon(
                    Icons.email
                  )
                  //prefixText: '+998',

                ),
              ),

              SizedBox(height: 30,),
              Text(
                controller.text =='' ? 'Empty':  controller.text,
                style: TextStyle(
                  fontSize: 26,
                  color: Colors.black
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 200,
                  width: 200,
                  child: Image.asset('assets/images/123.jpg'))
            ],
          ),
        ),
      ),
    );
  }
}
