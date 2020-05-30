import 'package:flutter/material.dart';
import 'sidebar.dart';
import 'app_bar.dart';
import 'card.dart';

class MainMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topBar(),
      drawer: SideBar(),
      body: Container(
        child: Padding(
          padding: EdgeInsets.only(top: 30, left: 40, right: 40),
          child: ListView(
            children: <Widget>[
              ActivityCard(color: Colors.red),
              ActivityCard(color: Colors.green),
              ActivityCard(color: Colors.blue),
            ],
          ),
        ),
      ),
    );
  }
}
