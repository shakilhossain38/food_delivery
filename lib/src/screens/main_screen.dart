import 'package:flutter/material.dart';
import 'package:food_delivery/src/pages/favorite_page.dart';
import 'package:food_delivery/src/pages/orderpage.dart';
import 'package:food_delivery/src/pages/profile_page.dart';
import 'package:food_delivery/src/scoped-model/food_model.dart';
import '../pages/homepage.dart';

class MainScreen extends StatefulWidget {
  final FoodModel foodModel;
  MainScreen({this.foodModel});

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex=0;
  HomePage homePage;
  OrderPage orderPage;
  ProfilePage profilePage;
  FavoritePage favoritePage;
  List<Widget> pages;
  Widget currentPage;

  @override
  void initState() {
    // TODO: implement initState
    widget.foodModel.fetchFoods();
    homePage =HomePage();
    orderPage= OrderPage();
    favoritePage= FavoritePage();
    profilePage= ProfilePage();
    pages=[homePage, orderPage, favoritePage,profilePage];
    currentPage=homePage;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (int index){
          setState(() {
            currentIndex= index;
            currentPage=pages[index];
          });
        },
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            title: Text("Cart"),
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            title: Text("Favorite"),
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text("Profile"),
          ),



        ],
      ),
      body: currentPage,
    );

  }
}
