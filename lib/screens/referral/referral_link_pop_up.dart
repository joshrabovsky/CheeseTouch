import 'package:CheeseTouchApp/screens/profile/profiles.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import '../../components/drawer.dart';
import '../../components/appbar.dart';

class ReferralPopUp extends StatelessWidget {
  static const routeName = "/referral";
  Widget build(BuildContext context) {
    String username = "random_username";
    var screenName;
    var link;
    link = "cheesetouch/play!$username";

    void selectMenuOption(BuildContext ctx) {
      Navigator.of(ctx).push(
        MaterialPageRoute(
          builder: (_) {
            return screenName;
          },
        ),
      );
    }

    return Scaffold(
      backgroundColor: Color(0xff231651),
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(70.0), child: MyAppBar(false)),
      endDrawer: DrawerMenu(),
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          GestureDetector(
            onTap: () {
              screenName = CheeseTouch();
              selectMenuOption(context);
              print("profile tapped");
            },
            child: Container(
              margin: EdgeInsets.all(0),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/plainbackground.png"),
                    fit: BoxFit.fitWidth),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                  child: Container(
                    width: double.infinity,
                    alignment: Alignment.bottomCenter,
                    padding: EdgeInsets.symmetric(vertical: 40, horizontal: 10),
                    decoration: BoxDecoration(
                      color: Color(0xffF4E04D).withOpacity(0.8),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25),
                      ),
                    ),
                    child: Column(
                      children: [
                        Text(
                            "Get friends to sign up through your referral link to receive 10 points!",
                            textAlign: TextAlign.center,
                            style: Theme.of(context)
                                .textTheme
                                .subtitle1
                                .apply(color: Colors.black)),
                        Padding(
                          padding: EdgeInsets.only(top: 20, bottom: 10),
                          child: Text(
                            'Copy and share your link:',
                            textAlign: TextAlign.center,
                            style: Theme.of(context)
                                .textTheme
                                .headline3
                                .apply(color: Colors.black),
                          ),
                        ),
                        Container(
                            child: Text(
                              '$link',
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1
                                  .apply(color: Colors.black),
                            ),
                            color: Colors.white,
                            padding: EdgeInsets.all(5),
                            margin: EdgeInsets.symmetric(horizontal: 20))
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
