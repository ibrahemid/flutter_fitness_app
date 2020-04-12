import 'package:flutter/material.dart';
import 'package:flutter_fitness_app/data/models/activity.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ActivityRepo {
  List<Activity> activities= [];
  final List<String> types = [
    "Running",
    "Cycling",
    "Swimming",
    "Exercise",
    "Boxing",
    "Tennis",
    "Football"
  ];
  final List<IconData> icons = [
    FontAwesomeIcons.running,
    FontAwesomeIcons.bicycle,
    FontAwesomeIcons.swimmer,
    FontAwesomeIcons.dumbbell,
    FontAwesomeIcons.fistRaised,
    FontAwesomeIcons.tableTennis,
    FontAwesomeIcons.futbol,
  ];
  ActivityRepo() {
    for (int i = 0; i <= 6; i++) {
      activities.add(new Activity(icons[i], types[i], false));
    }
  }
}
