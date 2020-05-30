import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:unisolatedapp/activity_list.dart';
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
          child: ActivityList(),
        ),
      ),
    );
  }
}
