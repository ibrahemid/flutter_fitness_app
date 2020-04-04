import 'package:flutter/material.dart';

class GreetingText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 12),
      child: Column(
        children: <Widget>[
          Text("Hey Ahmed"),
          Text(
            "Let's to be Fit!👏",
            style: TextStyle(fontSize: 34),
          ),
        ],
      ),
    );
  }
}
