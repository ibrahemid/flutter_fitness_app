import 'package:flutter/material.dart';

class GreetingText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 22),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Hey Ahmed",
            style: Theme.of(context).textTheme.body1,
          ),
          Text(
            "Let's to be Fit!👏",
            style: Theme.of(context).textTheme.headline,
          ),
        ],
      ),
    );
  }
}
