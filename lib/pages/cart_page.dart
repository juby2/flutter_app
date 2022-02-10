// ignore_for_file: import_of_legacy_library_into_null_safe, implementation_imports, prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';

import 'package:flutter_app/widgets/themes.dart';
import 'package:velocity_x/src/extensions/context_ext.dart';
import 'package:velocity_x/src/extensions/string_ext.dart';
import 'package:velocity_x/src/flutter/padding.dart';
import 'package:velocity_x/src/flutter/sizedbox.dart';
import 'package:velocity_x/src/flutter/widgets.dart';


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
      body: Column(
        children: [
          _CartList().p32().expand(),
          Divider(),
          _CartTotal(),
        ],
      ),
    );
  }
}


class _CartTotal extends StatelessWidget {
  const _CartTotal({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
   
    return SizedBox(
      height: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          "\$999".text.xl4.color(context.theme.accentColor).make(),
          ElevatedButton(
            onPressed: (){}, 
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(context.theme.buttonColor)
            ),
            child:"Buy".text.white.make(),

          ).w32(context)
        ],
      ),
    );
  }
}

class _CartList extends StatefulWidget {
  const _CartList({ Key? key }) : super(key: key);

  @override
  __CartListState createState() => __CartListState();
}

class __CartListState extends State<_CartList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) => ListTile(
        leading: Icon(Icons.done),
        trailing: IconButton(
          icon:Icon(Icons.remove_circle_outline),
          onPressed: () {},

      ),
      title: "Item 1".text.make(),
      ),
    );
  }
}