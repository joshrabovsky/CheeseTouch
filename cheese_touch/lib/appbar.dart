import "package:flutter/material.dart";

class MyAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xff231651),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Container(
              child: Image.asset(
                "assets/images/appbarlogo.png",
              ),
            ),
          ),
        ],
      ),
    );
  }
}