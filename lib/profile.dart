import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profilepage extends StatefulWidget
{
  @override
  State<Profilepage> createState() => _ProfilepageState();
}

class _ProfilepageState extends State<Profilepage> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Row(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Text("Profile",style: TextStyle(color: Colors.white),),
         ],
       ),
       backgroundColor: Colors.black,
     ),
     body:
     Column(
       children: [
         Center(
           child: CircleAvatar(backgroundImage: AssetImage("asset/image/admin.png"),),
         ),
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: TextFormField(
             initialValue: "Karan Sukhani",
             decoration: InputDecoration(
               hintText: "Full Name",
               border: OutlineInputBorder(
                 borderSide: BorderSide(color: Colors.black)
               )
             ),

           ),
         )
       ],
     ),
   );
  }
}