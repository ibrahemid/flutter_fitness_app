import 'package:flutter/material.dart';
import 'package:flutter_fitness_app/widgets/chart_top_card.dart';
import 'package:flutter_fitness_app/widgets/nutritionWidget.dart';

class StatusCard extends StatefulWidget {
  StatusCard({Key key}) : super(key: key);

  @override
  _StatusCardState createState() => _StatusCardState();
}

class _StatusCardState extends State<StatusCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
          Row(
            children: <Widget>[
              Container(
                  // child: Text("as"),
                  // Text("ds"),
                  ),
              Container(
                  // Text("sa"),
                  // child: Text("das"),
                  ),
            ],
          ),
          // CupsWidget()
        ],
      ),
    );
  }
}
