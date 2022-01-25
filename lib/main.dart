import 'package:flutter/material.dart';
import 'package:flutter_app/pages/home_page.dart';
import 'package:flutter_app/pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: Homepage(),
      themeMode:ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple
      ),
      darkTheme: ThemeData(
        // brightness: Brightness.dark,
        primarySwatch: Colors.green
      ),
      routes:{
        "/":(context) =>logInPage(),
        "/login":(context) =>Homepage(),
        "/login":(context) =>logInPage(),
      } ,
      );
    
  }
}
