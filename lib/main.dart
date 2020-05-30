import 'package:flutter/material.dart';
import 'package:unisolatedapp/login_menu.dart';
import 'main_menu.dart';

import 'card.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        initialRoute: 'main_menu', routes: {
        'main_menu': (context) => LoginMenu(),
    }
    );
  }
}
