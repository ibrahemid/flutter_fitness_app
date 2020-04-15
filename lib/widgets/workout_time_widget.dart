import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class WorkoutTimeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Icon(
          FontAwesomeIcons.solidClock,
          size: 10,
          color: Theme.of(context).focusColor,
        ),
        Container(
//          color: Colors.amber,
          width: 112, //todo check this
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text(
                "8:00  To 9:00 Am",
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'QuickSandBold',
                  color: Color(0xff383454),
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    '7km',
                    style: Theme.of(context).textTheme.caption,
                  ),
                  RichText(
                    // replace useless text rows
                    text: TextSpan(
                        text: '10Km ',
                        style: Theme.of(context).textTheme.caption,
                        children: <TextSpan>[
                          TextSpan(
                            style: Theme.of(context).textTheme.display1,
                            text: 'Goal',
                          ),
                        ]),
                  ),
                ],
              ),
              SizedBox(
                height: 4,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(55),
                child: StepProgressIndicator(
                  totalSteps: 10,
                  currentStep: 8,
                  padding: 0,
                  size: 2.5,
                  selectedColor: Theme.of(context).primaryColor,
                  unselectedColor: Theme.of(context).accentColor,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
