import 'package:flutter/material.dart';

class PopularText extends StatelessWidget {
  const PopularText({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, left: 26.0),
      child: Text(
        "Popular Curce",
        style: Theme.of(context).textTheme.subtitle,
      ),
    );
  }
}
