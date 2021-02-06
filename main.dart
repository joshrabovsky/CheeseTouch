import 'package:flutter/material.dart';
import './drawer.dart';

void main() {
  runApp(MyApp());
}

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
                  fontSize: 24))),
      home: Status(),
    );
  }
}

class Status extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(backgroundColor: Colors.transparent, elevation: 0),
      endDrawer: DrawerMenu(),
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

class Leaderboard extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(backgroundColor: Colors.transparent, elevation: 0),
      endDrawer: DrawerMenu(),
      body: Stack(
        children: [
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
              'Leaderboard',
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

class Profile extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(backgroundColor: Colors.transparent, elevation: 0),
      endDrawer: DrawerMenu(),
      body: Stack(
        children: [
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
              'Profile',
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

class HowtoPlay extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(backgroundColor: Colors.transparent, elevation: 0),
      endDrawer: DrawerMenu(),
      body: Stack(
        children: [
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
              'How to Play',
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

class TitleScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(backgroundColor: Colors.transparent, elevation: 0),
      endDrawer: DrawerMenu(),
      body: Stack(
        children: [
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
              'Title Screen',
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
