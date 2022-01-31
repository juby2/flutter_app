// ignore_for_file: prefer_const_declarations, prefer_const_constructors, non_constant_identifier_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Mydrawer extends StatelessWidget {
  const Mydrawer({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final  ImageUrl = "https://in.bmscdn.com/iedb/artist/images/website/poster/large/katrina-kaif-1171-12-09-2017-11-20-17.jpg";
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child:UserAccountsDrawerHeader(
              margin: EdgeInsets.zero,
              accountName: Text("Brinda"),
              accountEmail: Text("brinda@yahoo.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(ImageUrl),
              )
              )
              ),
               ListTile(
                leading: Icon(
                  CupertinoIcons.home,
                  color: Colors.white,
                  ),
                  title: Text("Home",
                  textScaleFactor: 1.2,
                  style: TextStyle(color: Colors.white) ,
                  ),
              ),
              ListTile(
                leading: Icon(
                  CupertinoIcons.profile_circled,
                  color: Colors.white,
                  ),
                  title: Text("Profile",
                  textScaleFactor: 1.2,
                  style: TextStyle(color: Colors.white) ,
                  ),
              ),
              ListTile(
                leading: Icon(
                  CupertinoIcons.mail,
                  color: Colors.white,
                  ),
                  title: Text("Email me",
                  textScaleFactor: 1.2,
                  style: TextStyle(color: Colors.white) ,
                  ),
              ),
          ],
        ),
      ),

    );
  }
}
