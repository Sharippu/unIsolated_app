import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SideBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(50.0),
          bottomRight: Radius.circular(50.0)
        ),
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
                              Icon(Icons.account_circle, size: 70),
                              Text("Username")
                            ],
                          )
                      ),
                      ListTile(
                        title: Text('Home',
                        style: TextStyle(
                          fontSize: 20
                        ),
                        ),
                        onTap: () => {},
                      ),
                    ],
                  )
                ),
                SizedBox(
                  height: 400,
                ),
                Container(
                  child: Column(
                    children: <Widget>[
                      Icon(Icons.phone, size: 50.0),
                      Text("Calling for a friend")
                    ],
                  )
                )
              ],
            ),
          ),
      ),
    );
  }
}
