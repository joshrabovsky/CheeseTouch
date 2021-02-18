import "package:flutter/material.dart";

import 'logo.dart';

class MyAppBar extends StatelessWidget {
  var backButton = false;

  MyAppBar(this.backButton);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xff231651),
      automaticallyImplyLeading: backButton,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[Logo()],
      ),
    );
  }
}
