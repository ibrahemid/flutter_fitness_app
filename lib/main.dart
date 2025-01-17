import 'package:flutter/material.dart';

import 'Screens/home_view.dart';

void main() => runApp(MainApplication());

class MainApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xff383454),
        accentColor: Color(0xff7A777C),
        backgroundColor: Color(0xffF4F2F4),
        indicatorColor: Colors.red,
        focusColor: Color(0xffFE7012),
        cardColor: Color(0xffFEFCFE),
        primaryColorDark: Color(0xff090808),
        fontFamily: 'QuickSandSemiBold',
        textTheme: TextTheme(
          title: TextStyle(fontSize: 14.0, fontFamily: "QuickSandSemiBold"),
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
              fontFamily: 'QuickSandBold',
              color: Color(0xff9E9CA5)),
          display4: TextStyle(
              // used for 100g text white
              fontSize: 16,
              fontFamily: 'QuickSandBold',
              color: Color(0xff383454)),
          display2: TextStyle(
              // used for Today body white text
              fontSize: 32,
              fontFamily: 'QuickSandSemiBold',
              color: Colors.white),
          display3: TextStyle(
              // used for 2105 text white
              fontSize: 22,
              fontFamily: 'QuickSandSemiBold',
              color: Colors.white),
          caption: TextStyle(
              // used for 095L small primary
              fontSize: 12,
              fontFamily: 'QuickSandBold',
              color: Color(0xff383454)),
          subtitle: TextStyle(
//            used popular
              fontSize: 24.0,
              fontFamily: 'QuickSandSemiBold',
              fontWeight: FontWeight.w800,
              color: Color(0xff383454)),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
