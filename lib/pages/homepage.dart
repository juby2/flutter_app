// ignore_for_file: prefer_const_constructors, avoid_renaming_method_parameters, non_constant_identifier_names, avoid_types_as_parameter_names, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/drawer.dart';

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
      drawer: Mydrawer(),
    );
  }
}
