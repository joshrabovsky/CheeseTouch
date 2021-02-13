import 'package:flutter/material.dart';

import "./starter_body.dart";

void Run() {
  runApp(App());
}

//test comment :)

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

class _MyHomeState extends State<MyHomePage> {
  final Color mainColor = Color(0xff231651);

  // final AppBar appBar = AppBar(
  //   backgroundColor: Color(0xff231651),
  //   title: Row(
  //     mainAxisAlignment: MainAxisAlignment.start,
  //     crossAxisAlignment: CrossAxisAlignment.center,
  //     children: <Widget>[
  //       Container(
  //         child: Image.asset(
  //           "assets/images/appbarlogo.png",
  //         ),
  //       ),
  //     ],
  //   ),
  // );

  @override
  Widget build(BuildContext context) {

    return StarterBody();
    // Scaffold(
    //   // backgroundColor: Colors.purple,
    //   // extendBodyBehindAppBar: true,
    //   appBar:
    //       PreferredSize(preferredSize: Size.fromHeight(70.0), child: MyAppBar()),
    //   endDrawer: Drawer(),
    //   body: Container(
    //     width: MediaQuery.of(context).size.width,
    //     child: ,
    //   ),
    // );
  }
}
