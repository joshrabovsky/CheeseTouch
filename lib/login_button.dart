import 'constants.dart';
import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  final Function press;
  final String text;
  final Color color, textColor;
  const LoginButton({
    Key key,
    this.press,
    this.text,
    this.color,
    this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
        return Container(
      margin: EdgeInsets.only(top: 50, bottom: 20),
      width: size.width * 0.8,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 11,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(11),
        child: FlatButton(
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 45),
            color: Colors.white,
            onPressed: press,
            child: Text(
              text,
              style: Theme.of(context).textTheme.headline3.apply(color: kPrimaryColor)
            )),
      ),
    );
  }
}
