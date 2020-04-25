import 'package:flutter/material.dart';
import 'package:flutter_fitness_app/data/models/activity.dart';
import 'package:flutter_fitness_app/data/repositories/activityRepo.dart';

class ActivityCards extends StatefulWidget {
  @override
  _ActivityCardsState createState() => _ActivityCardsState();
}

class _ActivityCardsState extends State<ActivityCards> {
  int _selectedIndex = 0;
  List<Activity> activityList = new ActivityRepo().activities;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: getRows()),
    );
  }

  List<Widget> getRows() {
    var result = activityList
        .asMap()
        .entries
        .map(
          (MapEntry map) => _buildCards(map.key),
        )
        .toList();
    result.insert(0, SizedBox(width: 12));
    return result;
  }

  Widget _buildCards(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Container(
        margin: EdgeInsets.only(left: 10, right: 10, top: 18, bottom: 12),
        height: 92,
        width: 72,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  blurRadius: 12,
                  spreadRadius: 3,
                  color: Colors.black38.withOpacity(.05),
                  offset: Offset(0, 0))
            ],
            color: _selectedIndex == index
                ? Theme.of(context).focusColor
                : Theme.of(context).cardColor,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(12),
              topLeft: Radius.circular(1),
              bottomRight: Radius.circular(1),
              bottomLeft: Radius.circular(12),
            )),
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Icon(
                activityList[index].iconData,
                size: 38,
                color: _selectedIndex == index
                    ? Theme.of(context).cardColor
                    : Theme.of(context).primaryColorDark,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Expanded(
              flex: 1,
              child: Text(
                activityList[index].activityType,
                style: _selectedIndex == index
                    ? Theme.of(context).textTheme.caption
                    : Theme.of(context).textTheme.display1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
