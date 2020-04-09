import 'package:flutter/cupertino.dart';
import 'package:flutter_fitness_app/presentation/my_flutter_app_icons.dart';

class GlassIcon {
  final bool isFilled;
  final IconData icon;
  GlassIcon(this.isFilled)
      : icon = isFilled
            ? MyFlutterApp.glass_icon_filled
            : MyFlutterApp.glass_icon_empty;
}
