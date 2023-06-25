// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, avoid_unnecessary_containers, avoid_print

import 'package:block_test/constant/constant.dart';
import 'package:block_test/models/product_model.dart';
import 'package:block_test/widgets/products_screen_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WatchDetails extends StatefulWidget {
  final ProductModel productModel;
  WatchDetails(this.productModel);

  @override
  State<WatchDetails> createState() => _WatchDetailsState();
}

class _WatchDetailsState extends State<WatchDetails> {
  int countitem = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(245, 245, 245, 1),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              // mainAxisSize: MainAxisSize.min,
              children: [
                Stack(
                  children: [
                    hSizedbox(30),
                    Container(
                      height: MediaQuery.of(context).size.height / 3,
                      child: Row(
                        children: [
                          Expanded(child: Container()),
                          Expanded(
                              child: Container(
                            color: Constants.primaryColor,
                          )),
                        ],
                      ),
                    ),
                    SafeArea(
                      child: Column(
                        children: [
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                IconButton(
                                  icon: SvgPicture.asset(
                                    "assets/svg/menu.svg",
                                    width: 12.0,
                                    height: 12.0,
                                  ),
                                  onPressed: () {},
                                ),
                                IconButton(
                                  icon: SvgPicture.asset(
                                    "assets/svg/hamburger.svg",
                                    width: 16.0,
                                    height: 16.0,
                                  ),
                                  onPressed: () {},
                                )
                              ]),
                          hSizedbox(30),
                          Container(
                            padding: EdgeInsets.all(24.0),
                            height: MediaQuery.of(context).size.height * 0.38,
                            width: MediaQuery.of(context).size.width * 0.85,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16.0),
                              border: Border.all(
                                color: Colors.grey,
                              ),
                            ),
                            child: Image.asset(widget.productModel.image!),
                          ),
                          hSizedbox(20),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  RichText(
                                      textAlign: TextAlign.left,
                                      text: TextSpan(children: [
                                        TextSpan(
                                          text: widget.productModel.brand,
                                          style: TextStyle(
                                            height: 2.5,
                                            fontSize: 28.0,
                                            fontWeight: FontWeight.w600,
                                            color:
                                                Color.fromRGBO(34, 34, 34, 1),
                                          ),
                                        ),
                                        TextSpan(
                                          text:
                                              " ${widget.productModel.name!} - ${widget.productModel.model!}",
                                          style: TextStyle(
                                            fontSize: 23.0,
                                            color:
                                                Color.fromRGBO(34, 34, 34, 1),
                                          ),
                                        ),
                                      ])),
                                  hSizedbox(5),
                                  Text(
                                    widget.productModel.category!,
                                    style: TextStyle(
                                      fontSize: 14.0,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  hSizedbox(15),
                                  Row(
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            countitem += 1;
                                          });
                                        },
                                        child: container(
                                          widget: Icon(Icons.plus_one),
                                          width: 50,
                                          height: 50,
                                        ),
                                      ),
                                      wSizedbox(15),
                                      Text(
                                        "$countitem",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 24.0,
                                          color: Color.fromRGBO(34, 34, 34, 1),
                                        ),
                                      ),
                                      wSizedbox(15),
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            countitem -= 1;
                                          });
                                          if (countitem <= 1) {
                                            setState(() {
                                              countitem = 1;
                                            });
                                          }
                                        },
                                        child: container(
                                            widget:
                                                Icon(Icons.exposure_minus_1),
                                            width: 50,
                                            height: 50),
                                      ),
                                      wSizedbox(30),
                                      Text(
                                        "\$${(widget.productModel.price! * this.countitem).toStringAsFixed(2)}",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 24.0,
                                          color: Color.fromRGBO(34, 34, 34, 1),
                                        ),
                                      ),
                                    ],
                                  ),
                                  hSizedbox(10),
                                  Text(
                                    widget.productModel.description!,
                                    style: TextStyle(
                                      fontSize: 14.0,
                                      color: Colors.grey,
                                      height: 1.40,
                                    ),
                                  ),
                                  hSizedbox(15),
                                  Row(
                                    children: [
                                      InkWell(
                                        onTap: () {},
                                        child: Container(
                                          margin: EdgeInsets.only(right: 15.0),
                                          width: 60.0,
                                          height: 60.0,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            border: Border.all(
                                              color: Color.fromRGBO(
                                                  230, 230, 230, 1),
                                            ),
                                          ),
                                          child: Icon(Icons.heart_broken),
                                        ),
                                      ),
                                      Expanded(
                                        child: InkWell(
                                          onTap: () {},
                                          child: Container(
                                            margin:
                                                EdgeInsets.only(right: 15.0),
                                            height: 60.0,
                                            padding: EdgeInsets.symmetric(
                                              horizontal: 32.0,
                                            ),
                                            decoration: BoxDecoration(
                                              color: Constants.primaryColor,
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              border: Border.all(
                                                color: Color.fromRGBO(
                                                    230, 230, 230, 1),
                                              ),
                                            ),
                                            child: Center(
                                              child: Text(
                                                "Add to Cart",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 14.0,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        )));
  }
}
