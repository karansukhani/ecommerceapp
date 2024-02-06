import 'package:ecommerceapp/Products/adidas.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class Footwear extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
   return Footwear_State();
  }

}

class Footwear_State extends State<Footwear>{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       backgroundColor: Colors.black,
       title: Center(child: Text("Footwear",style: TextStyle(color: Colors.white),)),
     ),
     body: ListView(
       children: [
         TextButton(
           onPressed: (){
             Navigator.push(context, MaterialPageRoute(builder: (context)=>Adidas()));
           },
           child: Column(
             children: [
               Stack(
                 children: [
                   Image.asset("asset/image/Adidas-1.jpeg"),
                   Positioned(
                       top: 10,
                       left: 4,
                       child: Container(
                         height: 20,
                         width: 40,
                         color: Colors.yellowAccent,
                         child: Text(
                           " 25%",
                           style: TextStyle(
                               fontWeight: FontWeight.bold, color: Colors.black),
                         ),
                       ))
                 ],
               ),
               Text("as Red New ArrivalAdid"),
               Text(
                 "Rs.25000",
                 style: TextStyle(fontWeight: FontWeight.bold),
               )
             ],
           ),
         ),

       Column(
         children: [
           Stack(
             children: [
               Image.asset("asset/image/Jordan1.jpeg"),
               Positioned(
                   top: 10,
                   left: 4,
                   child: Container(
                     height: 20,
                     width: 40,
                     color: Colors.yellowAccent,
                     child: Text(
                       " 10%",
                       style: TextStyle(
                           fontWeight: FontWeight.bold, color: Colors.black),
                     ),
                   ))
             ],
           ),
           Text(" Mens Air Jordans"),
           Text(
             "Rs.30000",
             style: TextStyle(fontWeight: FontWeight.bold),
           )
         ],
       ),
       Column(
         children: [
           Stack(
             children: [
               Image.asset("asset/image/Adidas-1.jpeg"),
               Positioned(
                   top: 10,
                   left: 4,
                   child: Container(
                     height: 20,
                     width: 40,
                     color: Colors.yellowAccent,
                     child: Text(
                       " 25%",
                       style: TextStyle(
                           fontWeight: FontWeight.bold, color: Colors.black),
                     ),
                   ))
             ],
           ),
           Text("Mens Dunk Sneakers"),
           Text(
             "Rs.10000",
             style: TextStyle(fontWeight: FontWeight.bold),
           )
         ],
       ),
         Column(
           children: [
             Stack(
               children: [
                 Image.asset("asset/image/bully.webp"),
                 Positioned(
                     top: 10,
                     left: 4,
                     child: Container(
                       height: 20,
                       width: 40,
                       color: Colors.yellowAccent,
                       child: Text(
                         " 10%",
                         style: TextStyle(
                             fontWeight: FontWeight.bold, color: Colors.black),
                       ),
                     ))
               ],
             ),
             Text("BULLY SNEAKER 'BALCK/WHITE'"),
             Text(
               "Rs.29000",
               style: TextStyle(fontWeight: FontWeight.bold),
             )
           ],
         ),
         Column(
           children: [
             Stack(
               children: [
                 Image.asset("asset/image/NikeDunk.png.webp"),
                 Positioned(
                     top: 10,
                     left: 4,
                     child: Container(
                       height: 20,
                       width: 40,
                       color: Colors.yellowAccent,
                       child: Text(
                         " 10%",
                         style: TextStyle(
                             fontWeight: FontWeight.bold, color: Colors.black),
                       ),
                     ))
               ],
             ),
             Text("NIKE SB DUNK LOW THE POWERPUFF GIRLS BUBBLES"),
             Text(
               "₹43,500",
               style: TextStyle(fontWeight: FontWeight.bold),
             )
           ],
         ),

       ],
     ),
   );
  }
}