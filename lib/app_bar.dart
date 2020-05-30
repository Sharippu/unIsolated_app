import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(100.0),
      child: AppBar(
        title: Text("UnIsolated", style:TextStyle(color: Colors.white)),
        backgroundColor: Colors.cyan[800],
      ),
    );
  }
}
