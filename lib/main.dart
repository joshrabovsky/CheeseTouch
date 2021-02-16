import 'welcomeScreen.dart';
import 'constants.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CheeseTouch',
      home: WelcomeScreen(),
      theme: ThemeData(
        fontFamily: "Inconsolata",
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
        primaryColorLight: Color(0xff587792),
        primaryColorDark: Color(0xff8DB1AB),
        accentColor: Color(0xff1C1140),
        textTheme: ThemeData.light().textTheme.copyWith(
              headline6: TextStyle(
                  fontFamily: 'Inconsolata',
                  fontWeight: FontWeight.bold,
                  fontSize: 24),
              headline1: TextStyle(
                  fontFamily: 'Inconsolata',
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
              headline2: TextStyle(
                  fontFamily: 'Inconsolata',
                  fontWeight: FontWeight.bold,
                  fontSize: 40),
              headline3: TextStyle(
                  fontFamily: 'Inconsolata',
                  fontWeight: FontWeight.bold,
                  fontSize: 14),
            ),
      ),
    );
  }
}
