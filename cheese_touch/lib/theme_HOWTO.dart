import 'package:flutter/material.dart';
import 'welcome_screen.dart';
import 'how_to_play.dart';
 

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cheese Touch',
      theme: ThemeData(
        primaryColor: Color(0xff231651),
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
      home: HowtoPlayWelcomeScreen(),
    );
  }
}

class Status extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(backgroundColor: Colors.transparent, elevation: 0),
      endDrawer: Drawer(),
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/background.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: Text(
              'Status',
              style: Theme.of(context)
                  .textTheme
                  .headline6
                  .apply(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
