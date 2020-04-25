import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  @override
  _CustomBottomNavigationBarState createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _currentTab = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(0),
      padding: EdgeInsets.all(0),
      color: Theme.of(context).primaryColor,
      child: BottomNavigationBar(
        elevation: 0,
        iconSize: 26,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.layerGroup,
            ),
            title: SizedBox.shrink(),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.youtube,
            ),
            title: SizedBox.shrink(),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.compass,
            ),
            title: SizedBox.shrink(),
          ),
          BottomNavigationBarItem(
              icon: Container(
                child: Icon(FontAwesomeIcons.bell),
              ),
              title: SizedBox.shrink()),
        ],
        onTap: (int index) {
          _currentTab = index;
          setState(() {
            _currentTab = index;
          });
        },
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: _currentTab,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Theme.of(context).primaryColor,
        selectedItemColor: Theme.of(context).focusColor,
        unselectedItemColor: Theme.of(context).backgroundColor,
      ),
    );
  }
}
