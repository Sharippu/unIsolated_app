import 'package:flutter/material.dart';

class ActivityCard extends StatelessWidget {

  final Color color;
  final String name;
  final String time;

  ActivityCard({this.color, this.name, this.time});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 20),
      elevation: 6.0,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0))
      ),
      child: Container(
        width: 300,
        height: 120,
        padding: EdgeInsets.only(top: 12.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20.0)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Flexible(
              flex: 0,
              child: Container(
                alignment: Alignment(-0.9, 0),
                child: Text(
                  "",
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 16),
                ),
              )
            ),
            Flexible(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(20.0),
                        bottomLeft: Radius.circular(20.0)
                    )
                ),
                child: Column(
                  children: <Widget>[
                    Text(
                      time ?? "No time",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16, height: 2),
                    ),
                    Text(
                      name ?? "No name",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
