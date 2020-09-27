import 'package:flutter/material.dart';
import 'src/screens/main_screen.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Food Delivery App",
      theme: ThemeData(
          primaryColor: Colors.blueAccent
      ),
      home: MainScreen(),
    );
  }
}