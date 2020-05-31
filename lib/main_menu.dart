import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:unisolatedapp/activity_list.dart';
import 'sidebar.dart';
import 'app_bar.dart';


class MainMenu extends StatelessWidget {
  FirebaseUser user;

  MainMenu(this.user);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topBar(),
      drawer: SideBar(this.user),
      body: Container(
        child: Padding(
          padding: EdgeInsets.only(top: 30, left: 40, right: 40),
          child: ActivityList(),
        ),
      ),
    );
  }
}
