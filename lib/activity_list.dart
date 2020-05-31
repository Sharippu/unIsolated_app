import 'dart:math';

import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'card.dart';

class ActivityList extends StatefulWidget {
  @override
  _ActivityListState createState() => _ActivityListState();
}

class _ActivityListState extends State<ActivityList> {

  final firebase = FirebaseDatabase.instance.reference();

  @override
  Widget build(BuildContext context) {

    List<Widget> myList = [];
    List<Color> myColor = [Colors.blue, Colors.red, Colors.green];
    Random random = Random();

    myList.add(ActivityCard(color: myColor[random.nextInt(3)], name: "It's time to start your day.", time: "0600"));
    myList.add(ActivityCard(color: myColor[random.nextInt(3)], name: "Freshen up, you'll thank yourself for it!", time: "0630"));
    myList.add(ActivityCard(color: myColor[random.nextInt(3)], name: "Squeeze in one of these light exercises:", time: "0700"));
    myList.add(ActivityCard(color: myColor[random.nextInt(3)], name: "It's time to refuel! Grab something to eat.", time: "1200"));
    myList.add(ActivityCard(color: myColor[random.nextInt(3)], name: "Ring your family/friends for Lunch!", time: "0200"));


    return ListView(
      children: myList,
    );
  }
}
