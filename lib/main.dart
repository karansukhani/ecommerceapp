import 'package:ecommerceapp/cart.dart';
import 'package:ecommerceapp/categoriespage.dart';
import 'package:ecommerceapp/profile.dart';
import 'package:ecommerceapp/sneakerspage.dart';
import 'package:ecommerceapp/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: TextTheme(
      displayLarge: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.blue, fontSize: 20)),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SplashScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SizedBox(
          width: double.infinity,
          child: Stack(children: [
            InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Profilepage()));
                },
                child: CircleAvatar(
                  backgroundImage: AssetImage("asset/image/admin.png"),
                )),
            Positioned(
                left: 100,
                right: 100,
                top: 10,
                child: Text(
                  "Satguru Creations",
                  style: Theme.of(context).textTheme.displayLarge,
                )),
            // Container(width: 70,),
            Positioned(
              right: 60,
              top: 10,
              child: Container(
                width: 20,
                height: 20,
                child: Image.asset(
                  "asset/image/wishlist-1.png",
                ),
              ),
            ),
            Positioned(
                right:0,
                top: 2,
                child: TextButton(
                    onPressed: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>CartState("")));
                    },
                    child: Icon(Icons.shopping_cart,size: 30,color: Colors.black,)))
          ]),
        ),
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          TextField(
              decoration: InputDecoration(
            hintText: "Search",
            suffixIcon: Icon(Icons.search),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              // borderSide: BorderSide(),
            ),
          )),
          Row(
            children: [
              Text("Categories"),
              Container(
                width: 250,
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Categories()));
                },
                child: Text(
                  "VIEW ALL",
                  style: TextStyle(color: Colors.blue),
                ),
              )
            ],
          ),
          Row(
            children: [
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Footwear()));
                          },
                          child: Column(
                            children: [
                              SizedBox(
                                  height: 50,
                                  width: 80,
                                  child: Image.asset(
                                    "asset/image/shoe.jpg",
                                  )),
                              Text("Shoes",style: TextStyle(color: Colors.black),)
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            SizedBox(
                                height: 50,
                                width: 80,
                                child: Image.asset(
                                  "asset/image/mobile.jpeg",
                                )),
                            Text("Mobile",style: TextStyle(color: Colors.black),)
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            SizedBox(
                                height: 50,
                                width: 80,
                                child: Image.asset(
                                  "asset/image/headphone.jpg",
                                )),
                            Text("Accesories",style: TextStyle(color: Colors.black),)
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            SizedBox(
                                height: 50,
                                width: 80,
                                child: Image.asset(
                                  "asset/image/Perfume.jpg",
                                )),
                            Text("Perfume",style: TextStyle(color: Colors.black),)
                          ],
                        ),
                      ),
                    ],
                  )),
            ],
          ),
          Container(
            child: CarouselSlider(
              items: [
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(10)),
                    child: Image.asset("asset/image/temp1.jpg"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(10)),
                    child: Image.asset("asset/image/temp3.jpg"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(10)),
                    child: Image.asset("asset/image/temp2.jpg"),
                  ),
                ),
              ],
              options: CarouselOptions(height: 250),
            ),
          ),
          Row(
            children: [
              Text("New Products"),
              Container(
                width: 230,
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Footwear()));
                },
                child: Text(
                  "VIEW ALL",
                  style: TextStyle(color: Colors.blue),
                ),
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
              Text("Adidas Red New Arrival",style: TextStyle(color: Colors.black),),
              Text(
                "₹25000",
                style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),
              )
            ],
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
              Text(" Mens Air Jordans",style: TextStyle(color: Colors.black),),
              Text(
                "₹30000",
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
              Text("Mens Dunk Sneakers",style: TextStyle(color: Colors.black),),
              Text(
                "₹10000",
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
              Text("BULLY SNEAKER 'BALCK/WHITE'",style: TextStyle(color: Colors.black),),
              Text(
                "₹29000",
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
              Text("NIKE SB DUNK LOW THE POWERPUFF GIRLS BUBBLES",style: TextStyle(color: Colors.black),),
              Text(
                "₹43,500",
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
        ]),
      ),
    );
  }
}
