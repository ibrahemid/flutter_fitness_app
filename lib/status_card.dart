import 'package:flutter/material.dart';
import 'package:flutter_fitness_app/chart_top_card.dart';

class StatusCard extends StatefulWidget {
  StatusCard({Key key}) : super(key: key);

  @override
  _StatusCardState createState() => _StatusCardState();
}

class _StatusCardState extends State<StatusCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          ChartTopCard(),
          Row(children: <Widget>[
            // NutrationWidget("p1", "p2", "p3", "p4"),
            // NutrationWidget("p1", "p2", "p3", "p4"),
            // NutrationWidget("p1", "p2", "p3", "p4"),
          ]),
          Row(
            children: <Widget>[
              Container(
                child: Text("as"),
                // Text("ds"),
              ),
              Container(
                // Text("sa"),
                child: Text("das"),
              ),
            ],
          ),
          // CupsWidget()
        ],
      ),
    );
  }
}
