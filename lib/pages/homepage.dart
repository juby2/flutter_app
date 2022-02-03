// ignore_for_file: prefer_const_constructors, avoid_renaming_method_parameters, non_constant_identifier_names, avoid_types_as_parameter_names, avoid_unnecessary_containers, override_on_non_overriding_member, avoid_print, unused_local_variable, unnecessary_null_comparison

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/models/catalog.dart';
import 'package:flutter_app/widgets/drawer.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final int days = 30;

  final String name = 'Codepur';
  
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    final catalogjson =
        await rootBundle.loadString("assets/files/catalog.json");
    final decodeData = jsonDecode(catalogjson);
    var productsData = decodeData["products"];
    CatalogModel.items = List.from(productsData).map<Item>((item) {
      return Item.fromMap(item);
    }).toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext) {
    // final dummyList = List.generate(5, (index) => CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
              ? GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16), 
                itemBuilder: (context,index){
                  final item = CatalogModel.items[index];
                  return Card(
                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                    child: GridTile(
                      header: Container(
                        child: Text(item.name,
                        style: TextStyle(color: Colors.white),),
                        decoration: BoxDecoration(
                          color: Colors.deepPurple
                        ),),
                        
                      child: Image.network(item.image),
                      footer: Text(item.price.toString()),
                      )
                    );
                },
                itemCount: CatalogModel.items.length,
                )
              : Center(
                  child: CircularProgressIndicator(),
                )),
      drawer: Mydrawer(),
    );
  }
}
