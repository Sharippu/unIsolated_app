import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'app_bar.dart';
import 'card.dart';
import 'sidebar.dart';

class MainMenu extends StatelessWidget {
  FirebaseUser user;

  MainMenu(FirebaseUser user){
    this.user = user;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topBar(),
      drawer: SideBar(this.user),
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
