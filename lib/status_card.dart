import 'package:flutter/material.dart';

class StatusCard extends StatefulWidget {
  StatusCard({Key key}) : super(key: key);

  @override
  _StatusCardState createState() => _StatusCardState();
}

class _StatusCardState extends State<StatusCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          // ChartCard(),
          Row(children: <Widget>[
            // NutrationWidget("p1", "p2", "p3", "p4"),
            // NutrationWidget("p1", "p2", "p3", "p4"),
            // NutrationWidget("p1", "p2", "p3", "p4"),
          ]),
          Row(
            children: <Widget>[
              Container(
                Text("as"),
                Text("ds"),
              ),
              Container(
                Text("sa"),
                Text("das"),
              ),
            ],
          ),
          // CupsWidget()
        ],
      ),
    );
  }
}
