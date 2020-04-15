import 'package:flutter/material.dart';
import 'package:flutter_fitness_app/presentation/my_flutter_app_icons.dart';

class WaterGlass extends StatefulWidget {
  final bool isFilled;

  const WaterGlass({Key key, this.isFilled}) : super(key: key);
  @override
  _WaterGlassState createState() => _WaterGlassState();
}

class _WaterGlassState extends State<WaterGlass> {
  bool _isFilled;
  @override
  void initState() {
    super.initState();
    _isFilled = widget.isFilled;
  }

  Widget _buildIcon(bool isFilled) {
    return isFilled
        ? Icon(
            MyFontIcons.glass_icon_filled,
            key: UniqueKey(),
          )
        : Icon(MyFontIcons.glass_icon_empty, key: UniqueKey());
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          setState(() {
            _isFilled = !_isFilled;
          });
        },
        child: AnimatedSwitcher(
            transitionBuilder: (Widget child, Animation<double> animation) {
//              return FadeTransition(
//                opacity: new CurvedAnimation(
//                    parent: animation, curve: Curves.easeIn),
//              );
              return ScaleTransition(child: child, scale: animation);
            },
            duration: Duration(milliseconds: 600),
            child: _buildIcon(_isFilled)));
  }
}
