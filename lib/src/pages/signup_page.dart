import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'signin_page.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: ListView(
        children: <Widget>[
          Container(
            height: 100,
            width: 800,
          child: CustomPaint(
            size: Size(800, 100),
            //You can Replace this with your desired WIDTH and HEIGHT
            painter: RPSCustomPainter(),
          ),

          ),
         // SizedBox(height: 150.0,),
          SignUpPageInfo(),
        ],
      ),
    );
  }
}


class SignUpPageInfo extends StatefulWidget {
  @override
  _SignUpPageInfoState createState() => _SignUpPageInfoState();
}

class _SignUpPageInfoState extends State<SignUpPageInfo> {
  bool _toggleVisibility = true;
  bool _toggleconfirmvisibility= true;
  Widget _usernamefield() {
    return TextField(
        decoration: InputDecoration(
            hintText: "Enter username",
            hintStyle: TextStyle(color: Colors.grey, fontSize: 18.0),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            prefixIcon: Icon(Icons.account_box, color: Colors.pink,)));
  }

  Widget _emailfield() {
    return TextField(
        decoration: InputDecoration(
            hintText: "Enter email address",
            hintStyle: TextStyle(color: Colors.grey, fontSize: 18.0),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            prefixIcon: Icon(Icons.email, color: Colors.pink,)));
  }

  Widget _passwordField() {
    return TextField(
      decoration: InputDecoration(
        hintText: "Enter Password",
        hintStyle: TextStyle(
          color: Colors.grey,
          fontSize: 16.0,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        prefixIcon: Icon(Icons.lock, color: Colors.pink,),
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              _toggleVisibility = !_toggleVisibility;
            });
          },
          icon: _toggleVisibility
              ? Icon(Icons.visibility_off)
              : Icon(Icons.visibility),
        ),

      ),
      obscureText: _toggleVisibility,
    );
  }


  Widget _passwordconfirmField() {
    return TextField(
      decoration: InputDecoration(
        hintText: "Re-enter Password",
        hintStyle: TextStyle(
          color: Colors.grey,
          fontSize: 16.0,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        prefixIcon: Icon(Icons.lock, color: Colors.pink,),
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              _toggleconfirmvisibility= !_toggleconfirmvisibility;
            });
          },
          icon: _toggleconfirmvisibility
              ? Icon(Icons.visibility_off)
              : Icon(Icons.visibility),
        ),

      ),
      obscureText: _toggleconfirmvisibility,
    );
  }


  @override
  Widget build(BuildContext context) {
    return
       Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: <Widget>[
           Text(
             "Sign Up",
             style: TextStyle(
                 fontWeight: FontWeight.bold,
                 fontSize: 30.0,
                 color: Colors.pink),
           ),
           SizedBox(
             height: 10.0,
           ),
           Padding(
             padding: EdgeInsets.all(10.0),
             child: Column(
               children: <Widget>[
                 _usernamefield(),
                 SizedBox(
                   height: 10.0,
                 ),
                 _emailfield(),
                 SizedBox(
                   height: 10.0,
                 ),
                 _passwordField(),
                 SizedBox(
                   height: 10.0,
                 ),
                 _passwordconfirmField()
               ],
             ),
           ),
           Padding(
             padding: const EdgeInsets.all(10.0),
             child: Container(
               height: 50.0,
               decoration: BoxDecoration(
                 color: Colors.pink,
                 borderRadius: BorderRadius.circular(25.0),
               ),
               child: Center(
                 child: Text(
                   "Sign up",
                   style: TextStyle(
                       fontSize: 18.0,
                       fontWeight: FontWeight.bold,
                       color: Colors.white),
                 ),
               ),
             ),
           ),


           Padding(
             padding: const EdgeInsets.all(10.0),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: <Widget>[
                 Text(
                   "Already have an account?",
                   style: TextStyle(
                     fontSize: 18.0,
                   ),
                 ),
                 SizedBox(
                   width: 10.0,
                 ),
                 GestureDetector(
                   onTap: (){
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=>SignInPage()));
                   },
                   child: Text(
                     "Sign In",
                     style: TextStyle(
                         fontWeight: FontWeight.bold,
                         fontSize: 18.0,
                         color: Colors.blue),
                   ),
                 ),
               ],
             ),
           )
         ],
       );
  }
}
