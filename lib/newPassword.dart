import 'package:flutter/material.dart';
import 'drawer.dart';
import 'appbar.dart';
import 'profiles.dart';

class Password extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp();
  }
}

class NewPassword extends StatefulWidget {
  static const routeName = "newpassword";
  @override
  _NewPasswordState createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
            preferredSize: Size.fromHeight(70.0), child: MyAppBar(true)),
      endDrawer: DrawerMenu(),
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/plainbackground.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.symmetric(horizontal: 10),
                width: double.infinity,
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.white),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: "Enter phone number",
                    labelStyle: Theme.of(context)
                        .textTheme
                        .subtitle1
                        .apply(color: Colors.grey),
                  ),
                  style: Theme.of(context)
                      .textTheme
                      .subtitle1
                      .apply(color: Colors.white),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(11),
                      child: FlatButton(
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 100),
                        color: Colors.white,
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) =>
                                  buildPopupDialog(context));
                        },
                        child: Text(
                          "ENTER",
                          style: Theme.of(context)
                              .textTheme
                              .subtitle1
                              .apply(color: Theme.of(context).primaryColor),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

Widget buildPopupDialog(BuildContext context) {
  return new AlertDialog(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
    contentPadding: EdgeInsets.all(0),
    content: Container(
      height: 230,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            alignment: Alignment.topRight,
            padding: EdgeInsets.only(left: 20),
            child: FlatButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Icon(
                Icons.close,
                color: Colors.black,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Text(
              "A link was sent to your number. Click on it to reset password.",
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .headline3
                  .apply(color: Colors.black),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            padding: EdgeInsets.only(left: 10, right: 10, top: 15, bottom: 10),
            decoration: BoxDecoration(
              color: Color(0xffb3b3b3),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25),
              ),
            ),
            width: double.infinity,
            child: Column(
              children: [
                Text(
                  "Didn't receive a message?",
                  style: Theme.of(context)
                      .textTheme
                      .subtitle2
                      .apply(color: Colors.black),
                  textAlign: TextAlign.center,
                ),
                FlatButton(
                    color: Color(0xffb3b3b3),
                    child: Text(
                      'Click to resend link',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.subtitle1.apply(
                          color: Colors.black,
                          decoration: TextDecoration.underline),
                    ),
                    onPressed: () {
                      print("Resend referral link");
                    }),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
