import 'package:flutter/material.dart';
import 'package:unisolatedapp/login_menu.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(initialRoute: 'login_page', routes: {
      'login_page': (context) => LoginMenu(),
    });
  }
}
