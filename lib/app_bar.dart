import 'package:flutter/material.dart';

Widget topBar() {
  return PreferredSize(
    preferredSize: Size.fromHeight(40.0),
    child: AppBar(
      centerTitle: true,
      title: Text("UnIsolated", style:TextStyle(color: Colors.black)),
      backgroundColor: Colors.white,
    ),
  );
}
