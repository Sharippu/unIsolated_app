import 'package:flutter/material.dart';
import 'package:unisolatedapp/main_menu.dart';

import 'auth.dart';

class LoginMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              signInButton(context)
            ],
          ),
        ),
      ),
    );
  }

  Widget signInButton(BuildContext context){
    return OutlineButton(
      onPressed: (){
        signInGoogle().whenComplete(() {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return MainMenu();
              },
            ),
          );
        });
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      borderSide: BorderSide(color: Colors.blue),
      highlightElevation: 0,
      child: Text(
        'Sign in with Google',
        style: TextStyle(
          fontSize: 20,
          color: Colors.blue,
        ),
      ),
    );
  }
}