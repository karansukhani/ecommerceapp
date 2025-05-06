import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Products/adidas_product_screen.dart';
import '../../Products/jordan_product_screen.dart';
import '../../constants/sizes.dart';
import '../../constants/text_strings.dart';
import '../../sneakers_listing_screen.dart';
import '../cart/cart.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Text(KTexts.homeAppbarTitle,style: Theme.of(context).textTheme.labelMedium!.apply(color: Colors.grey),),
            Text(KTexts.homeAppbarSubTitle,style: Theme.of(context).textTheme.headlineSmall!.apply(color: Colors.black),),
          ],
        ),
        actions: [
          Stack(
            children: [
              IconButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>CartState("")));
              }, icon: const Icon(Icons.shopping_cart_rounded,color: Colors.black,)),
              Positioned(
                right: 0,
                child: Container(height: 15,
                  width: 15,

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.yellowAccent.withOpacity(0.5),
                  ),
                  child: Center(child: Text("2",style: Theme.of(context).textTheme.labelLarge,)),),
              )
            ],
          )
        ],
        automaticallyImplyLeading: false,
      ),
      body:
      SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
                decoration: InputDecoration(
                  hintText: "Search",
                  prefixIcon: const Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    // borderSide: BorderSide(),
                  ),
                )),
          ),
          Row(
            children: [
              const Text("Popular Categories",style: TextStyle(fontWeight: FontWeight.bold),),
              Container(
                width: 200,
              ),
              TextButton(
                onPressed: () {
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => StoreScreen()));
                },
                child: const Text(
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
                              Container(
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(100),
                                    color: Colors.white,),
                                  height: 50,
                                  width: 80,

                                  child: Center(
                                    child: Image.asset(
                                      "asset/image/shoe.jpg",
                                    ),
                                  )),
                              const Text(
                                "Shoes",
                                style: TextStyle(color: Colors.black),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(100)),
                              height: 50,
                              width: 80,
                              child: Image.asset(
                                "asset/image/mobile.jpeg",
                              ),
                            ),
                            const Text(
                              "Mobile",
                              style: TextStyle(color: Colors.black),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Container(
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(100)),
                                height: 50,
                                width: 80,
                                child: Image.asset(
                                  "asset/image/headphone.jpg",
                                )),
                            const Text(
                              "Accesories",
                              style: TextStyle(color: Colors.black),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Container(
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(100)),
                                height: 50,
                                width: 80,
                                child: Image.asset(
                                  "asset/image/Perfume.jpg",
                                )),
                            const Text(
                              "Perfume",
                              style: TextStyle(color: Colors.black),
                            )
                          ],
                        ),
                      ),
                    ],
                  )),
            ],
          ),
          Container(
            child: CarouselView(
              children: [
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
                    child: Image.asset("asset/image/banner_3.jpg"),
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
              ], itemExtent: 300,
            ),
          ),
          const SizedBox(height: KSizes.spaceBtwItems,),

          Row(
            children: [
              const Text(
                "New Arrivals",
                style:
                TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              Container(
                width: 230,
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Footwear()));
                },
                child: const Text(
                  "VIEW ALL",
                  style: TextStyle(color: Colors.blue),
                ),
              )
            ],
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder:(context) => AdidasProductScreen()));
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                decoration: const BoxDecoration(boxShadow: [
                  BoxShadow(
                    color: Colors.transparent,
                    blurRadius: 15,
                  )
                ],
                  // border: Border.all(color: Colors.black)
                ),
                child: Column(
                  children: [
                    Container(
                      decoration: const BoxDecoration(boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 10,
                        )
                      ]),
                      child: Container(
                        decoration: const BoxDecoration(boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 10,
                          )
                        ]),
                        child: Stack(
                          children: [
                            Image.asset("asset/image/Adidas-1.jpeg"),
                            Positioned(
                                top: 10,
                                left: 4,
                                child: Container(
                                  height: 20,
                                  width: 40,
                                  color: Colors.yellowAccent,
                                  child: const Text(
                                    " 25%",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                ))
                          ],
                        ),
                      ),
                    ),
                    const Text(
                      "Adidas Red New Arrival",
                      style: TextStyle(color: Colors.black),
                    ),
                    const Text(
                      "₹25000",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),
                    )
                  ],
                ),
              ),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Jordan()));
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                decoration: const BoxDecoration(boxShadow: [
                  BoxShadow(
                    color: Colors.transparent,
                    blurRadius: 15,
                  )
                ]),
                child: Column(
                  children: [
                    Container(
                      decoration: const BoxDecoration(boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 10,
                        )
                      ]),
                      child: Stack(
                        children: [
                          Image.asset("asset/image/Jordan1.jpeg"),
                          Positioned(
                              top: 10,
                              left: 4,
                              child: Container(
                                height: 20,
                                width: 40,
                                color: Colors.yellowAccent,
                                child: const Text(
                                  " 10%",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                              ))
                        ],
                      ),
                    ),
                    const Text(
                      " Mens Air Jordans",
                      style: TextStyle(color: Colors.black),
                    ),
                    const Text(
                      "₹30000",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder:(context) => AdidasProductScreen()));
            },

            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                decoration: const BoxDecoration(boxShadow: [
                  BoxShadow(
                    color: Colors.transparent,
                    blurRadius: 15,
                  )
                ]),
                child: Column(
                  children: [
                    Container(
                      decoration: const BoxDecoration(boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 10,
                        )
                      ]),
                      child: Stack(
                        children: [
                          Image.asset("asset/image/Adidas-1.jpeg"),
                          Positioned(
                              top: 10,
                              left: 4,
                              child: Container(
                                height: 20,
                                width: 40,
                                color: Colors.yellowAccent,
                                child: const Text(
                                  " 25%",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                              ))
                        ],
                      ),
                    ),
                    const Text(
                      "Mens Dunk Sneakers",
                      style: TextStyle(color: Colors.black),
                    ),
                    const Text(
                      "₹10000",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Container(
              decoration: const BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Colors.transparent,
                  blurRadius: 15,
                )
              ]),
              child: Column(
                children: [
                  Container(
                    decoration: const BoxDecoration(boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 10,
                      )
                    ]),
                    child: Stack(
                      children: [
                        Image.asset("asset/image/bully.webp"),
                        Positioned(
                            top: 10,
                            left: 4,
                            child: Container(
                              height: 20,
                              width: 40,
                              color: Colors.yellowAccent,
                              child: const Text(
                                " 10%",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                            ))
                      ],
                    ),
                  ),
                  const Text(
                    "BULLY SNEAKER 'BALCK/WHITE'",
                    style: TextStyle(color: Colors.black),
                  ),
                  const Text(
                    "₹29000",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Container(
              decoration: const BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Colors.transparent,
                  blurRadius: 15,
                )
              ]),
              child: Column(
                children: [
                  Container(
                    decoration: const BoxDecoration(boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 10,
                      )
                    ]),
                    child: Stack(
                      children: [
                        Image.asset("asset/image/NikeDunk.png.webp"),
                        Positioned(
                            top: 10,
                            left: 4,
                            child: Container(
                              height: 20,
                              width: 40,
                              color: Colors.yellowAccent,
                              child: const Text(
                                " 10%",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                            ))
                      ],
                    ),
                  ),
                  const Text(
                    "NIKE SB DUNK LOW THE POWERPUFF GIRLS BUBBLES",
                    style: TextStyle(color: Colors.black),
                  ),
                  const Text(
                    "₹43,500",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ),
        ]
        ),
      ),
    );
  }
}