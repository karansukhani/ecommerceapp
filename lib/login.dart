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
          title: Text("Satguru Creations",style: TextStyle(color: Colors.blue),),
              backgroundColor: Colors.black,
      ),
      body:
      Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.blue,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Login",style: Theme.of(context).textTheme.bodyLarge,),
            TextField(
              decoration: InputDecoration(
                  labelText: 'Username',
                border: OutlineInputBorder(
                  borderSide: BorderSide(style: BorderStyle.solid,color: Colors.pink),
                  borderRadius: BorderRadius.circular(11),
                )
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: TextField(
                obscureText: true,
                obscuringCharacter: '*',
                decoration:  InputDecoration(
                  labelText: 'Password',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(style: BorderStyle.solid,color: Colors.pink),
                     borderRadius: BorderRadius.circular(11),
                    ),
                ),
              ),
            ),
            ElevatedButton(onPressed: () {
         Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage()));
            }, child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
  }
