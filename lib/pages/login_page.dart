import 'package:flutter/material.dart';


class LoginPage extends StatelessWidget {
 
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Text("Login Page",
        style: TextStyle(fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.blue,
        ),
        ),
        ),
    );
  }
}