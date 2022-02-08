import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/themes.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:velocity_x/velocity_x.dart';


class CatalogHeader extends StatelessWidget {
  const CatalogHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "Catalog App".text.xl5.bold.color((MyTheme.darkBluishColor)).make(),
        "Trending Products".text.xl2.make(),
      ],
    );
  }
}