import 'package:flutter/material.dart';
import 'package:flutter_fitness_app/presentation/popular_text.dart';
import 'package:flutter_fitness_app/presentation/status_card.dart';
import 'package:flutter_fitness_app/widgets/activity_cards.dart';

import '../widgets/custom_appbar.dart';
import '../widgets/greeting_text.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeView createState() => _HomeView();
}

class _HomeView extends State<HomeView> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
//        height: 50,
        padding: EdgeInsets.all(0),
        margin: EdgeInsets.all(0),
        color: Theme.of(context).primaryColor,
        child: BottomNavigationBar(
          backgroundColor: Theme.of(context).primaryColor,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home, color: Theme.of(context).focusColor),
                title: Text('')),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.business,
                  color: Theme.of(context).backgroundColor,
                ),
                title: Text('')),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.school,
                  color: Theme.of(context).backgroundColor,
                ),
                title: Text('')),
          ],
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.amber[800],
//          onTap: _onItemTapped,
        ),
      ),
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
                        PopularText(),
                        PopularText(),
                        PopularText(),
                        ActivityCards()
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
