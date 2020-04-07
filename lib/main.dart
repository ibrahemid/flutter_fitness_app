import 'package:flutter/material.dart';
import 'package:flutter_fitness_app/home_view.dart';

void main() => runApp(MainApplication());

class MainApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Color(0xff383454),
        accentColor: Colors.cyan[600],
        indicatorColor: Colors.red,
        fontFamily: 'Georgia',
        textTheme: TextTheme(
          headline: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
          title: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
          body1: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
          body2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
          display1: TextStyle(
              fontSize: 10, color: Colors.grey, fontWeight: FontWeight.w500),
          display2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
          display3: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
