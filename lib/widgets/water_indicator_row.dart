import 'package:flutter/material.dart';
import 'package:flutter_fitness_app/data/repositories/glassRepo.dart';
import 'package:flutter_fitness_app/widgets/water_glass.dart';

class WaterIndicatorRow extends StatefulWidget {
  @override
  _WaterIndicatorRowState createState() => _WaterIndicatorRowState();
}

class _WaterIndicatorRowState extends State<WaterIndicatorRow> {
  @override
  Widget build(BuildContext context) {
    // rewrite this !
    GlassListRepo _glassListRepo = GlassListRepo(6);
    return Container(
        margin: EdgeInsets.only(bottom: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            for (bool x in [
              true,
              true,
              true,
              false,
              false,
              false,
              false,
              false
            ])
              WaterGlass(isFilled: x)
          ],
        ));
  }
}
