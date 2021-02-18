import 'package:flutter/material.dart';

import '../instructions/starter_body.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  final Color mainColor = Color(0xff231651);

  @override
  Widget build(BuildContext context) {
    return StarterBody();
  }
}
