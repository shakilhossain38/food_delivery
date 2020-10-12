import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'signup_page.dart';
class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
        // appBar: AppBar(title: Text("shakil"),),
        body: Column(
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
        Container(
          child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: SignInPageInfo()),
        ),
      ],
    ));
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = new Paint()..color = Colors.pink;

    Path path = Path();
    path.moveTo(0, size.height * 0.27);
    path.quadraticBezierTo(size.width * 0.09, size.height * 0.91,
        size.width * 0.21, size.height * 0.87);
    path.cubicTo(size.width * 0.33, size.height * 0.76, size.width * 0.40,
        size.height * 0.08, size.width * 0.48, size.height * 0.33);
    path.cubicTo(size.width * 0.53, size.height * 0.43, size.width * 0.58,
        size.height * 0.76, size.width * 0.63, size.height * 0.75);
    path.cubicTo(size.width * 0.67, size.height * 0.74, size.width * 0.67,
        size.height * 0.13, size.width * 0.70, size.height * 0.26);
    path.cubicTo(size.width * 0.81, size.height * 0.86, size.width * 0.77,
        size.height * 0.19, size.width * 0.85, size.height * 0.27);
    path.cubicTo(size.width * 0.93, size.height * 0.54, size.width * 0.92,
        size.height * 0.13, size.width * 0.95, size.height * 0.51);
    path.cubicTo(size.width * 0.96, size.height * 0.67, size.width * 1.11,
        size.height * 0.13, size.width * 1.00, size.height * 0.00);
    path.quadraticBezierTo(size.width * 0.75, size.height * 0.00,
        size.width * 0.00, size.height * 0.00);
    path.lineTo(0, size.height * 0.27);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class SignInPageInfo extends StatefulWidget {
  @override
  _SignInPageInfoState createState() => _SignInPageInfoState();
}

class _SignInPageInfoState extends State<SignInPageInfo> {
  bool _toggleVisibility = true;

  Widget _emailfield() {
    return TextField(
        decoration: InputDecoration(
            hintText: "Enter email address",
            hintStyle: TextStyle(color: Colors.grey, fontSize: 18.0),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            prefixIcon: Icon(
              Icons.email,
              color: Colors.pink,
            )));
  }

  Widget _passwordField() {
    return TextField(
      decoration: InputDecoration(
        hintText: "Enter your Password",
        hintStyle: TextStyle(
          color: Colors.grey,
          fontSize: 16.0,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        prefixIcon: Icon(
          Icons.lock,
          color: Colors.pink,
        ),
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

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Sign In",
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
                  _emailfield(),
                  SizedBox(
                    height: 10.0,
                  ),
                  _passwordField(),
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
                    "Sign in",
                    style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(
                    "Forgotten Password?",
                    style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.red),
                  )
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Don't have an account?",
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  SignUpPage()));
                    },
                    child: Text(
                      "Sign Up",
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
        ),
      ],
    );
  }
}
