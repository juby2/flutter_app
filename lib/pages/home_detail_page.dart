// ignore_for_file: unused_import, duplicate_ignore, import_of_legacy_library_into_null_safe, prefer_const_constructors

import 'dart:ffi';


import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/home_widgets/add_to_cart.dart';
import 'package:flutter_app/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:flutter_app/models/catalog.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;
  const HomeDetailPage({Key? key, required this.catalog}) 
  // ignore: unnecessary_null_comparison
  :assert (catalog!= null), super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: MyTheme.creamColor,
      bottomNavigationBar: Container(
        color: Colors.white,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
                  buttonPadding: EdgeInsets.zero,
                children: [
                  "\$${catalog.price}".text.bold.xl4.red800.make(),
                  AddToCart(catalog: catalog,).wh(130, 50)
                ],
              ).p32(),
      ),
     
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
              tag: Key(catalog.id.toString()),
              child: Image.network(catalog.image)).h32(context),
              Expanded(
                child: VxArc(
                  height: 30.0,
                  arcType: VxArcType.CONVEY,
                  edge: VxEdge.TOP,
                  child: Container(
                    color: Colors.white,
                    width: context.screenWidth,
                    child: Column(
                       children: [
                          catalog.name.text.xl4.color(MyTheme.darkBluishColor).bold.make(),
                          catalog.desc.text.xl.textStyle(context.captionStyle).make(),
                          10.heightBox,
                          "Sit eos lorem vero ipsum et sed rebum, et duo nonumy diam et eos, est diam ut vero vero. Nonumy ipsum sed sit stet magna, rebum dolor justo et et. Magna amet at clita sanctus ipsum, ea gubergren duo sed sea erat. Dolores lorem dolor accusam ut magna, vero sit."
                          .text
                          .textStyle(context.captionStyle)
                          .make()
                          .p8()
                       ],
                    ).py64()
                  ),
                ))
          ],
        )

      ),
    );
  }
}
