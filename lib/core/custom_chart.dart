import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';
import 'package:flutter_fitness_app/data/models/Chart_data.dart';

class CustomChart extends StatefulWidget {
  final List<ChartData> chartData;
  final double chartSize;
  final int holeSize;
  final String text;
  final bool isSmall;

  const CustomChart(
      {Key key,
      @required this.chartData,
      @required this.text,
      @required this.isSmall,
      @required this.chartSize,
      @required this.holeSize})
      : super(key: key);

  @override
  _CustomChartState createState() => _CustomChartState();
}

class _CustomChartState extends State<CustomChart> {
  @override
  Widget build(BuildContext context) {
    var series = [
      charts.Series(
        domainFn: (ChartData chartData, _) => chartData.domainFn,
        measureFn: (ChartData chartData, _) => chartData.measureFn,
        colorFn: (ChartData chartData, _) => chartData.color,
        id: 'Clicks',
        data: widget.chartData,
      ),
    ];
    var chart = charts.PieChart(series,
        animate: true,
        defaultRenderer:
            new charts.ArcRendererConfig(arcWidth: widget.holeSize));

    return SizedBox(
      height: widget.chartSize,
      width: widget.chartSize,
      child: Stack(
        children: <Widget>[
          Positioned.fill(
              child: Align(
            alignment: Alignment.center,
            child: Text(
              "${widget.text}",
              style: widget.isSmall
                  ? Theme.of(context).textTheme.caption
                  : Theme.of(context).textTheme.body2,
            ),
          )),
          chart,
        ],
      ),
    );
  }
}
