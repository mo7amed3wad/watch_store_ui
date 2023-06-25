// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers


import 'package:block_test/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

Widget container({
  double? height,
  Widget? widget,
  Color? colors,
  double? width,
 
  
}) {
  return  Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: colors,
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(
            color: Color.fromRGBO(230, 230, 230, 1),
          ),
        ),
        child: widget,
      
    
  );
}

Widget wSizedbox(double widthe) {
  return SizedBox(
    width: widthe,
  );
}

Widget hSizedbox(double hight) {
  return SizedBox(
    height: hight,
  );
}

final List<ProductModel> watches = [
  ProductModel(
    brand: "Skmei Analog",
    name: "Men’s Watch",
    image: "assets/images/watch-1.png",
    model: "AM03",
    price: 905.0,
    category: "Trending Watch",
    description:
        "Combining functionality with timeless style. Explore the Rolex® collection and find the watch is that was made for you.",
  ),
  ProductModel(
    brand: "Montblanc",
    name: "Men’s Watch",
    image: "assets/images/watch-2.png",
    price:2500.0,
    category: "Trending Watch",
    model: "AM03",
    description:
        "Combining functionality with timeless style. Explore the Rolex® collection and find the watch is that was made for you.",
  ),
  ProductModel(
    brand: "Harry Winston",
    name: "Men’s Watch",
    image: "assets/images/watch-3.png",
    model: "AM03",
    price: 873.0,
    category: "Trending Watch",
    description:
        "Combining functionality with timeless style. Explore the Rolex® collection and find the watch is that was made for you.",
  ),
  ProductModel(
    brand: "Omega",
    name: "Women’s Watch",
    image: "assets/images/watch-4.png",
    model: "AM03",
    price: 646.0,
    category: "Trending Watch",
    description:
        "Combining functionality with timeless style. Explore the Rolex® collection and find the watch is that was made for you.",
  ),
];
Widget gridview() {
  return Flexible(
      child: MasonryGridView.builder(
          reverse: true,
          gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemCount: watches.length,
          shrinkWrap: true,
          itemBuilder: (BuildContext ctx, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(ctx, "/watch-details" ,arguments: watches[index]);
                },
                child: Container(
                  height: 200,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8.0)),
                  child: Column(
                    children: [
                      Expanded(child: Image.asset(watches[index].image!)),
                      Text(
                        watches[index].brand!,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14.0,
                        ),
                      ),
                      SizedBox(
                        height: 3.0,
                      ),
                      Text(
                        watches[index].name!,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14.0,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          }));
}
