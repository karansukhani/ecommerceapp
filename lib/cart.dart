import 'package:ecommerceapp/Products/adidas.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cart extends StatefulWidget {


  @override
  State<StatefulWidget> createState() => CartState();
}

class CartState extends State<Cart> {

  var quantity=1;
  var item=["Adidas"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text(
          "Cart",
          style: Theme.of(context).textTheme.displaySmall,
        ),
      ),
      body: Padding(
              padding: EdgeInsets.all(8),
              child: ListView.separated(
        separatorBuilder: (_,__)=>const SizedBox(height: 10,),
        itemCount: item.length,
        itemBuilder:(_,index)=> Row(
          children: [
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Adidas()));
              },
              child: CircleAvatar(backgroundImage: AssetImage("asset/image/Adidas-1.jpeg",),
              ),
            ),
            SizedBox(width: 20,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Adidas Red New Arrival"),
                Text("Rs.25000",
                style: TextStyle(fontWeight: FontWeight.bold),)
              ],
            ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: TextButton(onPressed: (){
              setState(() {
                quantity--;
              });
            }, child: Text("-",style: TextStyle(fontWeight: FontWeight.bold))),
          ),
            Text("$quantity"),
            TextButton(onPressed: (){
              setState(() {
                quantity++;
              });
            }, child: Text("+",style: TextStyle(fontWeight: FontWeight.bold),))
          ],

        ),
              ),
            ),
    );
  }


}
