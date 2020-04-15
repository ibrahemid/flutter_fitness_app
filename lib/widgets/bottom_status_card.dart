import 'package:flutter/material.dart';
import 'package:flutter_fitness_app/data/models/Chart_data.dart';
import 'package:flutter_fitness_app/widgets/workout_time_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'custom_chart.dart';

class BottomStatusCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(18),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(4),
            decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(4)),
            child: Icon(
              FontAwesomeIcons.accessibleIcon,
              size: 15,
            ),
          ),
          WorkoutTimeWidget(),
          CustomChart(
            chartData: [
              ChartData(0, 30, Color(0xffFDFBFE)),
              ChartData(1, 70, Color(0xffFE6F14)),
            ],
            holeSize: 4,
            chartSize: 77,
          )
        ],
      ),
    );
  }
}
