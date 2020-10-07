import 'package:flutter/material.dart';
import 'package:food_delivery/src/scoped_model/food_model.dart';
import 'src/screens/main_screen.dart';
import 'package:scoped_model/scoped_model.dart';


void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  final FoodModel foodModel=FoodModel();
  @override
  Widget build(BuildContext context) {

    return ScopedModel<FoodModel>(
      model: foodModel,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Food Delivery App",
        theme: ThemeData(
            primaryColor: Colors.blueAccent
        ),
        home: MainScreen(foodModel: foodModel),
      ),

    );
  }
}