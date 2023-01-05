import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login'),),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                hintText: 'email'
              ),
            ),
            SizedBox(height: 16,),
            TextFormField(
              decoration: InputDecoration(
                  hintText: 'password'
              ),
            ),
            SizedBox(height: 24,),

            ElevatedButton(
                onPressed: (){},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey,
                  padding: EdgeInsets.symmetric(horizontal: 30,vertical: 5)
                ),
                child: Text("Login")),

            SizedBox(height: 24,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('If you dont have accaunt'),

                TextButton(
                    onPressed: (){}, child: Text('Register'))
              ],
            )
          ],
        ),
      ),
    );
  }
}
