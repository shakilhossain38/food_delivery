import 'package:flutter/material.dart';
import '../widgets/OrderCard.dart';
class OrderPage extends StatefulWidget {
  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
       children: <Widget>[
         SizedBox(height: 10.0,),
         Center(
           child: Text("Your Food Cart", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0,color: Colors.black),),
         ),
         OrderCard(),
       ],
    );
  }
}
