import 'package:flutter/cupertino.dart';
import 'package:flutter_fitness_app/presentation/my_flutter_app_icons.dart';

class GlassIcon {
  final bool isFilled;
  final IconData icon;
  GlassIcon(this.isFilled)
      : icon = isFilled
            ? MyFontIcons.glass_icon_filled
            : MyFontIcons.glass_icon_empty;
}
