import 'package:flutter/material.dart';
import 'sidebar.dart';

class MainMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(40.0),
        child: AppBar(
          centerTitle: true,
          title: Text("UnIsolated", style:TextStyle(color: Colors.black)),
          backgroundColor: Colors.white,
        ),
      ),
      drawer: SideBar(),
      body: Container(),
    );
  }
}
