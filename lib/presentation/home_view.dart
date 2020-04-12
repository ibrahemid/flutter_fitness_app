import 'package:flutter/material.dart';
import 'package:flutter_fitness_app/data/models/activities_list.dart';
import 'package:flutter_fitness_app/presentation/status_card.dart';

import '../widgets/custom_appbar.dart';
import '../widgets/greeting_text.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Color(0xffF4F2F4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CustomAppBar(),
              GreetingText(),
              StatusCard(),
              Padding(
                padding: const EdgeInsets.only(top: 8.0, left: 26.0),
                child: Text(
                  "Popular Curce",
                  style: Theme.of(context).textTheme.subtitle,
                ),
              ),
              ActivitiesList()
            ],
          ),
        ),
      ),
    );
  }
}
