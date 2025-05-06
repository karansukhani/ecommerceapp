import 'package:ecommerceapp/router/routing_constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/services.dart';
import 'package:readmore/readmore.dart';

class AdidasProductScreen extends StatefulWidget {
  const AdidasProductScreen({super.key});

  @override
  State<AdidasProductScreen> createState() => _AdidasProductScreenState();
}

class _AdidasProductScreenState extends State<AdidasProductScreen> {
  bool isSelected = false;
  int initialQuantity = 1;
  TextEditingController quantityController = TextEditingController();

  @override
  void initState() {
    super.initState();
    quantityController.text = "1";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          CarouselSlider(
            items: [
              Image.asset("asset/image/Adidas-1.jpeg"),
              Image.asset("asset/image/Adidas-2.jpeg"),
              Image.asset("asset/image/Adidas-3.jpeg"),
              Image.asset("asset/image/Adidas-4.jpeg"),
            ],
            options: CarouselOptions(height: 200),
          ),
          const SizedBox(
            height: 20,
            width: double.infinity,
          ),
          const Padding(
            padding: EdgeInsets.only(top: 5, bottom: 5),
            child: Text(
              "Adidas Originals",
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 5, bottom: 5),
            child: Text(
              "TRAE YOUNG 3 'OFF WHITE/RED/CORE BLACK'",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 5, bottom: 5),
            child: Text("₹ 14,999.00"),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 5, bottom: 5),
            child: Text("Stock : InStock"),
          ),
          const Text("Size"),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ChoiceChip(
                    label: const Text("6"),
                    selected: isSelected,
                    color: WidgetStateColor.resolveWith(
                        (states) => Colors.black12),
                    onSelected: (value) {}),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ChoiceChip(
                    label: const Text("7"),
                    selected: isSelected,
                    color: WidgetStateColor.resolveWith(
                        (states) => Colors.black12),
                    onSelected: (value) {}),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ChoiceChip(
                    label: const Text("8"),
                    selected: isSelected,
                    color: WidgetStateColor.resolveWith(
                        (states) => Colors.black12),
                    onSelected: (value) {}),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ChoiceChip(
                    label: const Text("9"),
                    selected: isSelected,
                    color: WidgetStateColor.resolveWith(
                        (states) => Colors.black12),
                    onSelected: (value) {}),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ChoiceChip(
                    label: const Text("10"),
                    selected: isSelected,
                    color: WidgetStateColor.resolveWith(
                        (states) => Colors.black12),
                    onSelected: (value) {}),
              ),
            ],
          ),
          Row(
            children: [
              TextButton(
                  onPressed: () {
                    setState(() {
                      initialQuantity--;
                    });
                  },
                  child: const Text(
                    "-",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
              SizedBox(
                width: 40,
                height: 20,
                child: TextFormField(
                  controller: quantityController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          // borderSide: BorderSide(style: BorderStyle.solid),
                          )),
                ),
              ),
              TextButton(
                  onPressed: () {
                    setState(() {
                      initialQuantity++;
                    });
                  },
                  child: const Text(
                    "+",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(cartScreenRoute,
                    arguments: quantityController.text.toString());
              },
              style: ButtonStyle(
                  backgroundColor:
                      WidgetStateColor.resolveWith((states) => Colors.blue)),
              child: const Center(
                child: Text(
                  "Add to Cart",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 5, bottom: 5),
            child: ReadMoreText(
              "Crafted for agility and stability, the design blends Off White, Red, and Core Black hues. The Off White base contrasts with vibrant Red overlays and TPU Three Stripes on the sides. Black accents grace the tongues, laces, and heel counter. Engineered for peak performance, the midsole enables explosive moves, while the rubber outsole provides crucial support in quick maneuvers.",
              trimLines: 3,
              trimCollapsedText: "Show more",
              trimExpandedText: "Show less",
              moreStyle: TextStyle(fontWeight: FontWeight.bold),
              lessStyle: TextStyle(fontWeight: FontWeight.w500),
            ),
          )
        ],
      ),
    );
  }
}
