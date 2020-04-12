import 'dart:math';

import 'package:flutter_fitness_app/data/models/glass.dart';


class GlassListRepo {
  final size;
  List<GlassIcon> _glassIcons = [];
  List<GlassIcon> get glassIcons => _glassIcons;
  set glassIcons(List<GlassIcon> glassIcons) {
    _glassIcons = glassIcons;
  }

  GlassListRepo(this.size) {
    var collection = [0, 1, 2];
    for (int i = 0; i <= size; i++) {
      glassIcons.add(GlassIcon(Random.secure().nextBool()));
    }
  }
}
