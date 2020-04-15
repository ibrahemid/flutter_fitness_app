import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WorkoutTimeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Icon(
          FontAwesomeIcons.clock,
          size: 10,
          color: Theme.of(context).focusColor,
        ),
        Container(
          color: Colors.amber,
          width: 160,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "8:00  To 9:00 Am",
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'QuickSandBold',
                  color: Color(0xff383454),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('sas'),
                  RichText(
                    // replace useless text rows
                    text: TextSpan(
                        text: '10Km',
                        style: Theme.of(context).textTheme.caption,
                        children: <TextSpan>[
                          TextSpan(
                            style: Theme.of(context).textTheme.display1,
                            text: 'Goal',
                          ),
                        ]),
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
