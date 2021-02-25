import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    // Header Of Login
    Widget headerLogin = Positioned(
      height: 400,
      width: MediaQuery.of(context).size.width,
      top: 0,
      child: Container(
        height: 400,
        decoration: new BoxDecoration(
            color: Colors.green,
            borderRadius: new BorderRadius.only(
              bottomLeft: const Radius.circular(50),
              bottomRight: const Radius.circular(50),
            )),
        child: Container(
          alignment: Alignment.bottomCenter,
          padding: EdgeInsets.all(10),
          child: Text(
            "Smart Home",
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
            ),
          ),
        ),
      ),
    );

    // Form of Login
    Widget formLogin = Positioned(
      height: 500,
      width: MediaQuery.of(context).size.width,
      top: 350,
      child: Container(
          height: 400,
          width: 20,
          decoration: new BoxDecoration(
            color: Colors.blueGrey,
            borderRadius: new BorderRadius.only(
              bottomLeft: const Radius.circular(50),
              bottomRight: const Radius.circular(50),
            ),
          ),
          child: Container(
            margin: EdgeInsets.only(top: 80),
          )),
    );

    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(0.0),
          child: Stack(
            children: <Widget>[
              headerLogin,
              formLogin,
            ].reversed.toList(),
          ),
        ),
      ),
    );
  }
}
