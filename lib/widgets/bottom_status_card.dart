import 'package:flutter/material.dart';
import 'package:flutter_fitness_app/data/models/Chart_data.dart';
import 'package:flutter_fitness_app/widgets/workout_time_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'custom_chart.dart';

class BottomStatusCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 0, right: 18, top: 0, left: 18),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Flexible(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(4),
              margin: EdgeInsets.only(bottom: 30, left: 8, right: 8),
              decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(4)),
              child: Icon(
                FontAwesomeIcons.accessibleIcon,
                size: 15,
              ),
            ),
          ),
          Flexible(flex: 3, child: WorkoutTimeWidget()),
          Flexible(
            fit: FlexFit.tight,
            flex: 2,
            child: CustomChart(
              chartData: [
                ChartData(0, 30, Color(0xffFDFBFE)),
                ChartData(1, 66, Color(0xffFE6F14)),
              ],
              holeSize: 17,
              chartSize: 108,
              text: "66%",
              isSmall: true,
            ),
          )
        ],
      ),
    );
  }
}
