// ignore_for_file: prefer_const_constructors, duplicate_ignore, use_full_hex_values_for_flutter_colors, import_of_legacy_library_into_null_safe, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
      primarySwatch: Colors.deepPurple,
      fontFamily: GoogleFonts.poppins().fontFamily,
      
      
       cardColor: Colors.white,
       canvasColor: creamColor,
       // ignore: deprecated_member_use
       buttonColor: darkBluishColor,
       accentColor: darkBluishColor,
      appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          // ignore: prefer_const_constructors
          iconTheme: IconThemeData(
            color: Colors.black,
            
          ),
          textTheme: Theme.of(context).textTheme,
            
         ));

  static ThemeData darkTheme(BuildContext context) =>
      ThemeData(
         fontFamily: GoogleFonts.poppins().fontFamily,
         
         cardColor: Colors.black,
         canvasColor: darkcreamColor,
         // ignore: deprecated_member_use
         buttonColor: lightBluishColor,
         accentColor: lightBluishColor,
         appBarTheme: AppBarTheme(
            color: Colors.black,
         elevation: 0.0,
          // ignore: prefer_const_constructors
         iconTheme: IconThemeData(
            color: Colors.black,
            
          ),
          textTheme: Theme.of(context).textTheme.copyWith(
              headline6:
                  context.textTheme.headline6?.copyWith(color: Colors.white),
            ),
         ));
      

  // color

  static Color creamColor = Color(0xfff5f5f5);
  static Color darkcreamColor = Vx.gray900;
  static Color darkBluishColor = Color(0xfff403b58);
  static Color lightBluishColor = Vx.indigo500;
}

