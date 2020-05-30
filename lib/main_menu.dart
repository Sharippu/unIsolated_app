import 'package:flutter/material.dart';
import 'sidebar.dart';
import 'app_bar.dart';

class MainMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topBar(),
      drawer: SideBar(),
      body: Container(),
    );
  }
}
