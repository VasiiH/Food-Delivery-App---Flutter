import 'package:flutter/material.dart';
import 'package:flutter_food_delevery/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food Delivery',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       scaffoldBackgroundColor: Colors.grey[50],
        primarySwatch: Colors.pink,
      ),
      home: HomeScreen(),
    );
  }
}

