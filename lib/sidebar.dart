import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:unisolatedapp/auth.dart';

class SideBar extends StatelessWidget {
  FirebaseUser user;

  SideBar(FirebaseUser user) {
    this.user = user;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      child: ClipRRect(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(50.0),
            bottomRight: Radius.circular(50.0)),
        child: Drawer(
          child: Column(
            children: <Widget>[
              Container(
                  child: Column(
                children: <Widget>[
                  Container(
                      padding: EdgeInsets.symmetric(vertical: 30.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          ClipOval(
                              child: Image.network(user.photoUrl,
                                  width: 70, height: 70, fit: BoxFit.cover)),
                          Text(user.displayName)
                        ],
                      )),
                  ListTile(
                    title: Text(
                      'Home',
                      style: TextStyle(fontSize: 20),
                    ),
                    onTap: () => {},
                  ),
                  ListTile(
                    title: Text(
                      'Log out',
                      style: TextStyle(fontSize: 20),
                    ),
                    onTap: () {
                      signOutGoogle();
                      Navigator.pushReplacementNamed(context, 'login_page');
                    },
                  ),
                ],
              )),
              SizedBox(
                height: 400,
              ),
              Container(
                  child: Column(
                children: <Widget>[
                  Icon(Icons.phone, size: 50.0),
                  Text("Calling for a friend")
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
