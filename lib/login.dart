import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ecommerceapp/main.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("FirstPage")
      ),
      body:
      Column(
        children: [
          TextField(
            decoration: InputDecoration(
                labelText: 'Username'
            ),
          ),
          TextField(
            obscureText: true,
            obscuringCharacter: '*',
            decoration: const InputDecoration(
              labelText: 'Password',
            ),
          ),
          ElevatedButton(onPressed: () {
 Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage()));
          }, child: Text('Login'),
          ),
        ],
      ),
    );
  }
  }
