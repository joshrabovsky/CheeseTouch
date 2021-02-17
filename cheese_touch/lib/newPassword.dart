import 'package:CheeseTouchApp/constants.dart';
import 'package:flutter/material.dart';
import 'drawer.dart';
import 'appbar.dart';

class Password extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp();
  }
}

class NewPassword extends StatelessWidget {
  static const routeName = "/newpassword";
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
                              .apply(color: kPrimaryColor),
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
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      contentPadding: EdgeInsets.all(0),
      content: Container(
          height: 200,
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
              Text("123-456-789",
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .subtitle1
                      .apply(color: Colors.black)),
              Container(
                margin: EdgeInsets.only(bottom: 0, top: 10, left: 0, right: 0),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Color(0xffb3b3b3),
                  borderRadius: BorderRadius.circular(10),
                ),
                width: double.infinity,
                child: Column(
                  children: [
                    Text(
                      "A link was sent to your number. Click on it to rest password.",
                      style: Theme.of(context)
                          .textTheme
                          .subtitle1
                          .apply(color: Colors.black),
                      textAlign: TextAlign.start,
                    ),
                    Text("Didn't receive a message? Click to resend link",
                        style: Theme.of(context)
                            .textTheme
                            .subtitle1
                            .apply(color: Colors.white)),
                  ],
                ),
              ),
            ],
          )));
}
