// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:block_test/Screens/products_screen.dart';
import 'package:block_test/models/product_model.dart';
import 'package:flutter/material.dart';
class WatchDetails extends StatefulWidget {
 final ProductModel productModel;
   WatchDetails( this.productModel);

  @override
  State<WatchDetails> createState() => _WatchDetailsState();
}

class _WatchDetailsState extends State<WatchDetails> {
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(

    body: SafeArea(child: Container(
     child: Text(widget.productModel.brand.toString())
    )),

    );
  }
}