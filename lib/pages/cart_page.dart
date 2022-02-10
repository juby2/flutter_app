// ignore_for_file: import_of_legacy_library_into_null_safe, implementation_imports

import 'package:flutter/material.dart';

import 'package:flutter_app/widgets/themes.dart';
import 'package:velocity_x/src/extensions/string_ext.dart';


class CartPage extends StatelessWidget {
  const CartPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme.creamColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: "Cart".text.make()
      ),
    );
  }
}