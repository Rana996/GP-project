import 'package:flutter/material.dart';

AppBar header(context, {bool isAppTitle = false, String titletext}) {
  return AppBar(
    title: Text(
      isAppTitle ? "KidO" : titletext,
      style: TextStyle(color: Colors.tealAccent, fontSize: 50.0),
    ),
    centerTitle: true,
    backgroundColor: Theme.of(context).accentColor,
  );
}
