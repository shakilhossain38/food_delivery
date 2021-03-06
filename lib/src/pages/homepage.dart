import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/src/scoped-model/food_model.dart';
import 'package:scoped_model/scoped_model.dart';
import '../widgets/home_top_info.dart';
import '../widgets/food_category.dart';
import "../widgets/search.dart";
import '../widgets/bought_foods.dart';
import '../models/food_model.dart';
class HomePage extends StatefulWidget {
  final FoodModel foodModel;
  HomePage(this.foodModel);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

@override
void initState() {
    widget.foodModel.fetchFoods();// TODO: implement initState
    super.initState();
  }
  final textstyle = TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold);
  //List <Food> _foods = foods;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.only(left: 20.0, top: 50.0, right: 20.0),
        children: <Widget>[
          HomeTopInfo(),
          FoodCategory(),
          SizedBox(
            height: 20.0,
          ),
          Search(),
          SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Frequently Bought Foods",
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              GestureDetector(
                  onTap: () {},
                  child: Text(
                    "View all",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                        color: Colors.orangeAccent),
                  )),


            ],
          ),
          SizedBox(
            height: 20.0,
          ),
           Column(
              children: widget.foodModel.foods.map(_buildFoodItems).toList(),

            ),

        ],
      ),
    );
  }

  Widget _buildFoodItems(Food food) {
    return Container(
      margin: EdgeInsets.only(bottom: 20.0),
      child: BoughtFood(
        id: food.id,
        imagePath: food.imagePath,
        name: food.name,
        ratings: food.ratings,
        price: food.price,
      ),
    );
  }
}