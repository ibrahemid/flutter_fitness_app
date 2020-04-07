import 'package:flutter/material.dart';
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
    var data = [
      ChartData(0, 30, Color(0xffFDFBFE)),
      ChartData(1, 70, Color(0xffFE6F14)),
    ];

    var series = [
      charts.Series(
        domainFn: (ChartData chartData, _) => chartData.domainFn,
        measureFn: (ChartData chartData, _) => chartData.measureFn,
        colorFn: (ChartData chartData, _) => chartData.color,
        id: 'Clicks',
        data: data,
      ),
    ];

    var chart = charts.PieChart(series,
        animate: true,
        defaultRenderer: new charts.ArcRendererConfig(arcWidth: 20));

    var chartWidget = Padding(
      padding: EdgeInsets.all(32.0),
      child: SizedBox(
        height: 200.0,
        width: 200.0,
        child: Stack(
          children: <Widget>[
            Positioned.fill(
                child: Align(
              alignment: Alignment.center,
              child: Text("assdsd"),
            )),
            chart,
          ],
        ),
      ),
    );

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
        chartWidget
      ],
    );
// end of build
  }
}

class ChartData {
  final int domainFn;
  final int measureFn;
  final charts.Color color;
  ChartData(this.domainFn, this.measureFn, Color color)
      : this.color = charts.Color(
            g: color.green, b: color.blue, r: color.red, a: color.alpha);
}
