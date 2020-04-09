import 'package:flutter/material.dart';
import 'package:flutter_fitness_app/widgets/chart_top_card.dart';
import 'package:flutter_fitness_app/widgets/nutritionWidget.dart';
import 'package:flutter_fitness_app/widgets/water_indicator_row.dart';
import 'package:flutter_fitness_app/widgets/water_text_row.dart';

class StatusCard extends StatefulWidget {
  StatusCard({Key key}) : super(key: key);

  @override
  _StatusCardState createState() => _StatusCardState();
}

class _StatusCardState extends State<StatusCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Color(0xff000000).withOpacity(.05),
                offset: Offset(0, 0),
                blurRadius: 12,
                spreadRadius: 3)
          ],
          shape: BoxShape.rectangle,
          color: Color(0xffFEFCFF),
          borderRadius: BorderRadius.circular(8.0)),
      margin: EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          ChartTopCard(), // first item in the row
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: NutritionWidget(
                    amount: "100g",
                    nutritionType: "carbs",
                    goal: "300 Goal",
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: NutritionWidget(
                    amount: "120g",
                    nutritionType: "fat",
                    goal: "300 Goal",
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: NutritionWidget(
                    amount: "110g",
                    nutritionType: "protine",
                    goal: "300 Goal",
                  ),
                ),
              ]),
          WaterTextRow(),
          WaterIndicatorRow(),
        ],
      ),
    );
  }
}
