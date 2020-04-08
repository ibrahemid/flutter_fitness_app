import 'package:flutter/material.dart';
import 'package:flutter_fitness_app/home_view.dart';

void main() => runApp(MainApplication());

class MainApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xff383454),
        accentColor: Color(0xff383454),
        indicatorColor: Colors.red,
        fontFamily: 'QuickSand',
        textTheme: TextTheme(
          title: TextStyle(fontSize: 14.0, fontFamily: "quicksand"),
          headline: TextStyle(
              //used
              fontSize: 32.0,
              fontFamily: "QuickSandSemiBold",
              color: Color(0xff383454)),
          body1: TextStyle(
//            used for the text above headline
              fontSize: 20.0,
              fontFamily: "QuickSandSemiBold",
              color: Color(0xff383454)),
          body2: TextStyle(
              //used for chart value
              fontSize: 14.0,
              color: Colors.white,
              fontFamily: 'QuickSandSemiBold'),
          display1: TextStyle(
              // used for small gray text
              fontSize: 12,
              fontFamily: 'QuickSandSemiBold',
              color: Color(0xff9E9CA5)),
          display2: TextStyle(
              // used for small gray text
              fontSize: 32,
              fontFamily: 'QuickSandSemiBold',
              color: Colors.white),
          display3: TextStyle(
              // used for small gray text
              fontSize: 22,
              fontFamily: 'QuickSandSemiBold',
              color: Colors.white),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
