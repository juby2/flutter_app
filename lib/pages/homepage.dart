import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
   const Homepage({Key? key}) : super(key: key);
  final int days = 30;
  final String name = 'Codepur';

  @override
  Widget build(BuildContext) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App")
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to $days days of flutter by $name"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
