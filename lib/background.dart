import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key key,
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.only(),
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
              child: Image.asset(
            "assets/images/plainbackground.png",
            width: size.width,
            fit: BoxFit.cover,
          )),
          Positioned(top: 150, child: Image.asset("assets/images/cheese.png")),
          child,
        ],
      ),
    );
  }
}
