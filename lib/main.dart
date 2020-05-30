import 'package:flutter/material.dart';

import 'card.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static const String titles = "UnisolatedApp";
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: titles,
      home: Scaffold(
        appBar: AppBar(title: const Text(titles)),
        body: MyStatelessWidget(),
      ),
    );
  }
}