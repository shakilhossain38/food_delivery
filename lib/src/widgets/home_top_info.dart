import 'package:flutter/material.dart';
class HomeTopInfo extends StatefulWidget {
  @override
  _HomeTopInfoState createState() => _HomeTopInfoState();
}

class _HomeTopInfoState extends State<HomeTopInfo> {
  final textstyle= TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[

              Text("What would you", style: textstyle),
              Text("like to eat?", style:textstyle ,),
            ],
          ),
          Icon(Icons.notifications_none, size: 50.0, color: Theme.of(context).primaryColor,),
        ],
      ),
    );
  }
}
