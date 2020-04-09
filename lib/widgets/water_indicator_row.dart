import 'package:flutter/material.dart';
import 'package:flutter_fitness_app/models/glass.dart';
import 'package:flutter_fitness_app/repository/glassRepo.dart';

class WaterIndicatorRow extends StatefulWidget {
  @override
  _WaterIndicatorRowState createState() => _WaterIndicatorRowState();
}

class _WaterIndicatorRowState extends State<WaterIndicatorRow> {
  @override
  Widget build(BuildContext context) {
    // rewrite this !
    GlassListRepo _glassListRepog = GlassListRepo(6);
    print("size");
    print(_glassListRepog.size);
    print("length");
    print(_glassListRepog.glassIcons.length);
    return Container(
        margin: EdgeInsets.only(bottom: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            for (GlassIcon x in _glassListRepog.glassIcons)
              GestureDetector(child: Icon(x.icon))
          ],
        ));
  }
}
