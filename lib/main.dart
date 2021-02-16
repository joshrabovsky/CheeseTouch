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
      ),
    );
  }
}
