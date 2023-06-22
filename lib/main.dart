// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_local_variable

import 'package:block_test/Screens/products.dart';
import 'package:flutter/material.dart';
import 'Screens/home_screen.dart';
import 'Screens/watch_details.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     initialRoute: '/',
     onGenerateRoute: _onGenerateRoute,
      home:HomeScreen(),
    );
  }
}
Route<dynamic> _onGenerateRoute(RouteSettings settings) {
  Object? arguments = settings.arguments;
  switch (settings.name) {
    case "/":
      return MaterialPageRoute(builder: (BuildContext context) {
        return HomeScreen();
      });
    case "/store":
      return MaterialPageRoute(builder: (BuildContext context) {
        return Products();
      });
    case "/watch-details":
      return MaterialPageRoute(builder: (BuildContext context) {
        return WatchDetails(
        
        );
      });
    default:
      return MaterialPageRoute(builder: (BuildContext context) {
        return HomeScreen();
      });
  }
}


