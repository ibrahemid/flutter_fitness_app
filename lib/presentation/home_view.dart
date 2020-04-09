import 'package:flutter/material.dart';
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
              // StatusCard(),
            ],
          ),
        ),
      ),
    );
  }
}
