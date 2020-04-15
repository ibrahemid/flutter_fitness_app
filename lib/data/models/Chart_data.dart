import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

class ChartData {
  final int domainFn;
  final int measureFn;
  final charts.Color color;
  ChartData(this.domainFn, this.measureFn, Color color)
      : this.color = charts.Color(
            g: color.green, b: color.blue, r: color.red, a: color.alpha);
}
