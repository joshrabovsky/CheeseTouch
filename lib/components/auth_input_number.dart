import 'constants.dart';
import 'package:flutter/material.dart';

class AuthInputNumber extends StatelessWidget {
  final String hintText;
  final Function change;
  const AuthInputNumber({
    Key key,
    this.hintText,
    this.change,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        margin: EdgeInsets.symmetric(vertical: 15),
        width: size.width * 0.8,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white, width: 2.0),
          borderRadius: BorderRadius.circular(11),
          boxShadow: [
            BoxShadow(
              color: kPrimaryColor.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 11,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: TextField(
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 20),
            hintText: this.hintText,
            hintStyle:
                Theme.of(context).textTheme.headline4.apply(color: Colors.grey),
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
          ),
          style:
              Theme.of(context).textTheme.headline3.apply(color: Colors.white),
          onChanged: change,
        ));
  }
}
