// ignore_for_file: prefer_const_constructors, avoid_renaming_method_parameters, non_constant_identifier_names, avoid_types_as_parameter_names, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_app/models/catalog.dart';
import 'package:flutter_app/widgets/drawer.dart';
import 'package:flutter_app/widgets/item_widgets.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);
  final int days = 30;
  final String name = 'Codepur';

  @override
  Widget build(BuildContext) {
    final dummyList = List.generate(5, (index) => CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
            itemCount:dummyList.length,
            itemBuilder: (context, index) {
              return ItemWidget(item: dummyList[index]);
            }),
      ),
      drawer: Mydrawer(),
    );
  }
}
