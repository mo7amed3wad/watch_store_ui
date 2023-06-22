// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_string_escapes, avoid_unnecessary_containers, sort_child_properties_last
import 'package:block_test/Screens/products.dart';
import 'package:block_test/constant/constant.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(1, 1, 1, 1),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Stack(
                children: [
                  Positioned(
                    top: -150.0,
                    left: 1.0,
                    right: 0.0,
                    child: Container(
                      height: MediaQuery.of(context).size.height,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            "assets/images/home_bg.png",
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.sizeOf(context).width,
                    height: MediaQuery.of(context).size.height,
                    padding: EdgeInsets.symmetric(vertical: 40.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(children: [
                            TextSpan(
                              text: " Add a brand new \n",
                              style: TextStyle(
                                height: 2.5,
                                fontSize: 28.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            TextSpan(
                              text: "to your look",
                              style: TextStyle(
                                fontSize: 28.0,
                              ),
                            ),
                          ]),
                        ),
                        SizedBox(
                          height: 130,
                        ),
                        InkWell(
                          focusColor: Colors.black,
                          hoverColor: const Color.fromRGBO(0, 0, 0, 1),
                          highlightColor: Colors.black,
                          onTap: () {
                             Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (BuildContext context) {
                                    return Products();
                                  },
                                ),
                              );
                          },
                          child: Container(
                            child: Center(
                                child: Text(
                              "Get Started",
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.white,
                              ),
                            )),
                            width: double.infinity,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Constants.primaryColor,
                              borderRadius: BorderRadius.circular(75.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
