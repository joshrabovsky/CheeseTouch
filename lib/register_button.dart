import 'constants.dart';
import 'package:flutter/material.dart';

class RegisterButton extends StatelessWidget {
  final Function press;
  final String text;
  const RegisterButton({
    Key key,
    this.press,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      width: size.width * 0.8,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white, width: 2.0),
        borderRadius: BorderRadius.circular(11),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.7),
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
            color: kPrimaryColor,
            onPressed: press,
            child: Text(
              text,
              style: Theme.of(context)
                    .textTheme
                    .headline3
                    .apply(color: Colors.white),
            )),
      ),
    );
  }
}
