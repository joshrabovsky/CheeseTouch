import 'package:flutter/material.dart';

import "./leaderboard_body.dart";
import "./appbar.dart";

// Pointing to masterr
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final Color mainColor = Color(0xff231651);

  // final AppBar appBar = AppBar(
  //   backgroundColor: Colors.transparent,
  //   title: Row(
  //     mainAxisAlignment: MainAxisAlignment.start,
  //     crossAxisAlignment: CrossAxisAlignment.center,
  //     children: <Widget>[
  //       Expanded(
  //         child: Container(
  //           child: Image.asset(
  //             "assets/images/appbarlogo.png",
  //           ),
  //         ),
  //       ),
  //     ],
  //   ),
  // );

  @override
  Widget build(BuildContext context) {
    // double totalHeight =
    //     MediaQuery.of(context).padding.top + MyAppBar().preferredSize.height;

    return LeaderboardBody();
    //Scaffold(
    //   // extendBodyBehindAppBar: true,
    //   appBar: MyAppBar(),
    //   endDrawer: Drawer(),
    //   body: Container(
    //     width: MediaQuery.of(context).size.width,
    //     child: Stack(children: [
    //       Container(color: mainColor),
    //       Container(
    //         decoration: BoxDecoration(
    //           image: DecorationImage(
    //               image: AssetImage("assets/images/plainbackground.png"),
    //               fit: BoxFit.fitWidth),
    //         ),
    //       ),
    //       Container(
    //           child: Center(
    //         child: LeaderboardBody(totalHeight),
    //       ))
    //     ]),
    //   ),
    // );
  }
}
