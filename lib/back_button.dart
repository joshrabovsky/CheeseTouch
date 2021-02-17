import 'welcomeScreen.dart';
import 'package:flutter/material.dart';

class BackButtonCustom extends StatelessWidget {
  const BackButtonCustom({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return WelcomeScreen();
            },
          ),
        );
      },
      child: Row(
        children: [
          Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          Text(
            "Back",
            style: Theme.of(context)
                .textTheme
                .headline3
                .apply(color: Colors.white),
          )
        ],
      ),
    );
  }
}
