import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_fitness_app/core/my_flutter_app_icons.dart';
import 'package:flutter_fitness_app/core/overlay_container.dart';

class WaterGlass extends StatefulWidget {
  final bool isFilled;

  const WaterGlass({Key key, this.isFilled}) : super(key: key);
  @override
  _WaterGlassState createState() => _WaterGlassState();
}

class _WaterGlassState extends State<WaterGlass> {
  bool _isFilled;
  bool _dropdownShown;
  @override
  void initState() {
    super.initState();
    _isFilled = widget.isFilled;
    _dropdownShown = false;
  }

  Widget _buildIcon() {
    return _isFilled
        ? Icon(
            MyFontIcons.glass_icon_filled,
            key: UniqueKey(),
          )
        : Icon(MyFontIcons.glass_icon_empty, key: UniqueKey());
  }

  bool clap() {
    setState(() {
      //todo remove setStates
      _dropdownShown = !_dropdownShown;
    });

    Future.delayed(const Duration(milliseconds: 1000), () {
      setState(() {
        _dropdownShown = !_dropdownShown;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          setState(() {
            _isFilled = !_isFilled;
          });
          clap();
        },
        child: Stack(
          children: <Widget>[
            OverlayContainer(
                show: _dropdownShown,
                position: OverlayContainerPosition(),
                child: Text(
                  "👏",
                  style: TextStyle(fontSize: 299),
                )),
            AnimatedSwitcher(
//            transitionBuilder: (Widget child, Animation<double> animation) {
//              return ScaleTransition(
//                  child: child,
//                  scale: animation); //ToDo replace with directional Fade-in
//            },
                duration: Duration(milliseconds: 400),
                child: _buildIcon()),
          ],
        ));
  }
}
