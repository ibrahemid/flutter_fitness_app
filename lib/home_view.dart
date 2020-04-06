import 'package:flutter/material.dart';
import 'package:flutter_fitness_app/custom_appbar.dart';
import 'package:flutter_fitness_app/greeting_text.dart';
import 'package:flutter_fitness_app/status_card.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                CustomAppBar(),
                GreetingText(),
                StatusCard(),
                // StatusCard(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
