import 'package:flutter/material.dart';
import 'package:flutter_fitness_app/Presentation/activity_cards.dart';
import 'package:flutter_fitness_app/Presentation/status_card.dart';
import 'package:flutter_fitness_app/single_widgets/bottom_status_card.dart';

import '../Presentation/my_bottom_bar.dart';
import '../Presentation/my_top_bar.dart';
import '../single_widgets/greeting_text.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeView createState() => _HomeView();
}

class _HomeView extends State<HomeView> {
  int _currentTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavigationBar(),
//      CustomNavigationBar(selectedIndex: _selectedIndex),
      backgroundColor: Theme.of(context).primaryColor,
      body: Container(
        padding: EdgeInsets.all(0),
        margin: EdgeInsets.all(0),
        color: Theme.of(context).primaryColor,
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(40),
            bottomLeft: Radius.circular(40),
          ),
          child: Container(
            color: Theme.of(context).backgroundColor,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: ConstrainedBox(
                constraints: BoxConstraints(),
                child: SafeArea(
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        CustomAppBar(),
                        GreetingText(),
                        StatusCard(),
//                        PopularText(),
                        ActivityCards(),
                        BottomStatusCard(),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
