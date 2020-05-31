import 'package:firebase_auth/firebase_auth.dart';
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
              Padding(
                padding: EdgeInsets.only(
                  top: 70, bottom: 70
                ),
                child: Text(
                  'UNISOLATED',
                  style: TextStyle(
                      fontSize: 40
                  ),
                ),
              ),
              signInButton(context)
            ],
          ),
        ),
      ),
    );
  }

  Widget signInButton(BuildContext context) {
    return OutlineButton(
      onPressed: () => signIn(context),
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

  void signIn(BuildContext context) async {
    FirebaseUser user = await signInGoogle();
    Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) => MainMenu(user)
    ));
  }
}
