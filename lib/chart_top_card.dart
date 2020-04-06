import 'package:flutter/material.dart';
import 'package:flutter_fitness_app/pie_cahrt.dart';
import 'package:charts_flutter/flutter.dart' as charts;

// this should
class ChartTopCard extends StatefulWidget {
  ChartTopCard({Key key}) : super(key: key);

  @override
  _ChartTopCardState createState() => _ChartTopCardState();
}

class _ChartTopCardState extends State<ChartTopCard> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          color: Theme.of(context).primaryColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                "Today!🔥",
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              Row(
                children: <Widget>[
                  Text(
                    "2105",
                    style: TextStyle(
                        fontSize: 13,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "Kcal",
                    style: Theme.of(context).textTheme.display1,
                  ),
                ],
              ),
              Text(
                "Goal 30000 Kcl",
                style: Theme.of(context).textTheme.display1,
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8),
          child: Container(
              width: 80, height: 80, child: charts.PieChart(
        _project.getExpensesToChartSeries(),
        animate: true,
        animationDuration: Duration(milliseconds: 500),
        selectionModels: [
          new charts.SelectionModelConfig(
            type: charts.SelectionModelType.info,
            changedListener: _onSelectionChanged,
          )
        ],
        defaultRenderer: charts.ArcRendererConfig(
          arcWidth: 25,
        ),
      ),
      Center(
        child: Text(
          "88%",
          style: TextStyle(
            fontSize: 30.0,
            color: Colors.blue,
            fontWeight: FontWeight.bold
          ),
        ),
      )), // customize later
        )
      ],
    );
  }
}
