import 'constants.dart';
import 'package:flutter/material.dart';

class AuthPassword extends StatefulWidget {
  final String hintText;
  const AuthPassword({
    Key key,
    this.hintText,
  }) : super(key: key);

  @override
  _AuthPasswordState createState() => _AuthPasswordState();
}

class _AuthPasswordState extends State<AuthPassword> {
  bool password = true;
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
          obscureText: password,
          textAlignVertical: TextAlignVertical.center,
          decoration: InputDecoration(
            suffixIcon: IconButton(
              icon: Icon(
                password ? Icons.visibility_off : Icons.visibility,
                color: Colors.grey,
              ),
              onPressed: () {
                setState(() {
                  password = !password;
                });
              },
            ),
            contentPadding: EdgeInsets.symmetric(horizontal: 20),
            hintText: this.widget.hintText,
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
        ));
  }
}
