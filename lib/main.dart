import 'package:flutter/material.dart';
import 'src/screens/main_screen.dart';
import 'src/scoped-model/food_model.dart';
import 'package:scoped_model/scoped_model.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  FoodModel foodModel=FoodModel();
  @override
  Widget build(BuildContext context) {

    return ScopedModel<FoodModel>
      (
      model: FoodModel(),
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