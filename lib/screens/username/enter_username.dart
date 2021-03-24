import "package:flutter/material.dart";
import 'dart:math';

class EnterUsername extends StatefulWidget {
  @override
  _EnterUsernameState createState() => _EnterUsernameState();
}

class _EnterUsernameState extends State<EnterUsername> {
  final usernameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 180,
            child: TextField(
                cursorColor: Color(0xff231651),
                decoration: InputDecoration(
                  labelText: "Enter username",
                  labelStyle: Theme.of(context).textTheme.headline3.apply(
                        color: Color(0xff231651),
                      ),
                ),
                controller: usernameController,
                onSubmitted: (_) => null),
          ),
          Container(
            child: FlatButton(
              child: Icon(
                Icons.send,
                color: Color(0xff231651),
              ),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) =>
                        buildPopupDialog(context));
              },
            ),
          )
        ],
      ),
    );
  }
}

enum InfectStatus {
  BothSafe,
  BothInfected,
  PassTouch,
  GetInfected,
}

Widget buildPopupDialog(BuildContext context) {
  Random random = new Random();
  int randomNumber = random.nextInt(4);
  String text;
  String text2;
  String imageUrl;

  Map<int, String> randMap = {
    0: "InfectStatus.BothSafe",
    1: "InfectStatus.BothInfected",
    2: "InfectStatus.PassTouch",
    3: "InfectStatus.GetInfected",
  };

  Map<String, Object> bothSafe = {
    "text": "You're both safe!",
    "text2": "+ xx points",
    "image": "assets/images/bluecheck.png",
  };

  Map<String, Object> bothInfected = {
    "text": "You contacted another infected player.",
    "text2": "- xx points",
    "image": "assets/images/yellowwarning.png",
  };

  Map<String, Object> passTouch = {
    "text": "You've passed the cheese touch!",
    "text2": "+ xx points",
    "image": "assets/images/yellowcheck.png",
  };

  Map<String, Object> getInfected = {
    "text": "You've been infected",
    "text2": "- xx points",
    "image": "assets/images/yellowwarning.png",
  };

  if (randomNumber == 0) {
    text = bothSafe["text"];
    text2 = bothSafe["text2"];
    imageUrl = bothSafe["image"];
  } else if (randomNumber == 1) {
    text = bothInfected["text"];
    text2 = bothInfected["text2"];
    imageUrl = bothInfected["image"];
  } else if (randomNumber == 2) {
    text = passTouch["text"];
    text2 = passTouch["text2"];
    imageUrl = passTouch["image"];
  } else {
    text = getInfected["text"];
    text2 = getInfected["text2"];
    imageUrl = getInfected["image"];
  }

  return new AlertDialog(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
    contentPadding: EdgeInsets.all(0),
    content: Container(
      height: 300,
      width: MediaQuery.of(context).size.width * 0.6,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            alignment: Alignment.topRight,
            child: FlatButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Icon(
                Icons.close,
                color: Colors.grey,
              ),
            ),
          ),
          Image.asset(
            imageUrl,
            height: 140,
            width: 140,
            fit: BoxFit.fitWidth,
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Color(0xff231651),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25),
              ),
            ),
            width: double.infinity,
            child: Column(
              children: [
                Text(
                  text,
                  style: Theme.of(context)
                      .textTheme
                      .headline4
                      .apply(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
                Text(text2,
                    style: Theme.of(context)
                        .textTheme
                        .headline4
                        .apply(color: Colors.white)),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
