import 'package:CheeseTouchApp/components/drawer.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import '../instructions/starter_body.dart';
import '../../components/appbar.dart';

class FriendPopUp extends StatelessWidget {
  Widget build(BuildContext context) {
    String username = "random_username";
    var screenName;

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
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(70.0), child: MyAppBar(false)),
      endDrawer: DrawerMenu(),
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/background.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.all(50),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 60),
                    child: Column(
                      children: [
                        Container(
                          child: Text("$username would like to connnect.",
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.headline3),
                          padding: EdgeInsets.symmetric(
                              vertical: 40, horizontal: 25),
                          decoration: BoxDecoration(
                            color: Color(0xffF4E04D),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(25),
                              topRight: Radius.circular(25),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(25),
                              bottomRight: Radius.circular(25),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              FlatButton(
                                  color: Color(0xffCEE397),
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(10.0)),
                                  child: Text(
                                    'Accept',
                                    textAlign: TextAlign.center,
                                    style: Theme.of(context)
                                        .textTheme
                                        .subtitle1
                                        .apply(color: Colors.black),
                                  ),
                                  padding: EdgeInsets.symmetric(
                                      vertical: 15, horizontal: 30),
                                  onPressed: () {
                                    screenName = StarterBody();
                                    selectMenuOption(context);
                                    print("returning to status page");
                                  }),
                              FlatButton(
                                color: Color(0xff587792),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0)),
                                child: Text(
                                  'Decline',
                                  textAlign: TextAlign.center,
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle1
                                      .apply(color: Colors.black),
                                ),
                                padding: EdgeInsets.symmetric(
                                    vertical: 15, horizontal: 30),
                                onPressed: () {
                                  screenName = StarterBody();
                                  selectMenuOption(context);
                                  print("returning to status page");
                                },
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
