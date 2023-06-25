// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:block_test/Screens/watch_details.dart';
import 'package:block_test/constant/constant.dart';
import 'package:block_test/widgets/products_screen_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Products extends StatelessWidget {
  const Products({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(245, 245, 245, 1),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Container(
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
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
                  SizedBox(
                    height: 50,
                  ),
                  RichText(
                    text: TextSpan(children: [
                      TextSpan(
                        text: " World \n",
                        style: TextStyle(
                            height: 2.5,
                            fontSize: 28.0,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ),
                      TextSpan(
                        text: "Of luxury",
                        style: TextStyle(fontSize: 28.0, color: Colors.black),
                      ),
                    ]),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    children: [
                      container(
                        height: 60,
                        width: 60.0,
                        widget: Icon(Icons.search),
                      ),
                      wSizedbox(15),
                      container(
                        height: 60,
                        width: 60.0,
                        widget: Icon(Icons.settings),
                      ),
                      wSizedbox(15),
                      container(
                        height: 60,
                        width: 120.0,
                        colors: Constants.primaryColor,
                        widget: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Cart",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14.0,
                                  ),
                                ),
                                CircleAvatar(
                                  child: Center(
                                    child: Text(
                                      "2",
                                      style: TextStyle(
                                        color: Constants.primaryColor,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14.0,
                                      ),
                                    ),
                                  ),
                                  backgroundColor: Colors.white,
                                  radius: 12,
                                )
                              ]),
                        ),
                      ),
                    ],
                  ),
                  hSizedbox(15),
                  Flexible(
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
                 Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                            return WatchDetails(watches[index]);
                 }));
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
          }))
                ],
              )),
        ),
      )
      
      ),
    );
  }
}
