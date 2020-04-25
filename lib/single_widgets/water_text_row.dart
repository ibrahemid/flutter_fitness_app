import 'package:flutter/material.dart';

class WaterTextRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(bottom: 16.0, left: 16.0, right: 16.0, top: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "water",
                textAlign: TextAlign.start,
                style: Theme.of(context).textTheme.display4,
              ),
              Text(
                "8 glasses recommended",
                style: Theme.of(context).textTheme.display1,
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "0.95L",
                textAlign: TextAlign.start,
                style: Theme.of(context).textTheme.caption,
              ),
              Text(
                "Drinked",
                style: Theme.of(context).textTheme.display1,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
