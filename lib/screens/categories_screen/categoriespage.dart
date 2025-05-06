import 'package:ecommerceapp/sneakers_listing_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Categories extends StatefulWidget {  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       leading: BackButton(
         color: Colors.black,
       ),
     ),
     body: GridView.extent(maxCrossAxisExtent: 200,
     crossAxisSpacing: 10,
     mainAxisSpacing: 10,
     children: [
       TextButton(
         onPressed: (){
           Navigator.push(context, MaterialPageRoute(builder: (context)=> Footwear()));
         },
         child: Column(
           children: [
             Container(
                 width: 200,
                 height: 100,
                 child: Image.asset("asset/image/shoe.jpg",)),
             Text("Shoes",style: TextStyle(color: Colors.black),)
           ],
         ),
       ),
       Column(
         children: [
           Container(
             width: 200,
               height: 100,
               child: Image.asset("asset/image/mobile.jpeg",)),
           Text("Mobile")
         ],
       ),
       Column(
         children: [
           Container(
               width: 200,
               height: 100,
               child: Image.asset("asset/image/headphone.jpg",)),
           Text("Accesories")
         ],
       ),
       Column(
         children: [
           Container(
               width: 200,
               height: 100,
               child: Image.asset("asset/image/Perfume.jpg",)),
           Text("Perfume")
         ],
       ),
     ],),
   );
  }}
