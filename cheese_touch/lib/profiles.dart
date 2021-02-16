import 'newPassword.dart';
import 'package:flutter/material.dart';
import 'appbar.dart';
import 'drawer.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CheeseTouch(),
    );
  }
}

class CheeseTouch extends StatelessWidget {
  var screenName;
  void selectMenuOption(BuildContext ctx) {
    Navigator.of(ctx).pushReplacement(
      MaterialPageRoute(
        builder: (_) {
          return screenName;
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(70.0), child: MyAppBar(false)),
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
            Container(
              color: Colors.transparent,
              padding: EdgeInsets.only(
                top: 25,
              ),
              child: SizedBox(
                height: 150,
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Card(
                    color: Colors.transparent,
                    child: Padding(
                      padding: EdgeInsets.all(8),
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.all(0),
                            child: Container(
                              width: 160,
                              height: 160,
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage('assets/images/avatar.png'),
                                ),
                              ),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                'Kev_Cubanito',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline3
                                    .apply(color: Colors.white),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 200),
              child: ListView(
                children: <Widget>[
                  Container(
                    height: 60,
                    padding: EdgeInsets.only(
                      top: 10,
                      left: 5,
                      right: 5,
                    ),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      color: Color(0xff587792).withOpacity(0.7),
                      child: Row(
                        children: <Widget>[
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/images/points.png'),
                              ),
                            ),
                          ),
                          Text(
                            'Points:  ',
                            style: Theme.of(context)
                                .textTheme
                                .headline3
                                .apply(color: Colors.white),
                          ),
                          Text(
                            '18300',
                            style: Theme.of(context)
                                .textTheme
                                .headline4
                                .apply(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 60,
                    padding: EdgeInsets.only(
                      top: 10,
                      left: 5,
                      right: 5,
                    ),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      color: Color(0xff587792).withOpacity(0.7),
                      child: Row(
                        children: <Widget>[
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/images/Person.png'),
                              ),
                            ),
                          ),
                          Text(
                            'Number infected:  ',
                            style: Theme.of(context)
                                .textTheme
                                .headline3
                                .apply(color: Colors.white),
                          ),
                          Text(
                            '299',
                            style: Theme.of(context)
                                .textTheme
                                .headline4
                                .apply(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 60,
                    padding: EdgeInsets.only(top: 10, left: 5, right: 5),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      color: Color(0xff587792).withOpacity(0.7),
                      child: Row(
                        children: <Widget>[
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/images/crown.png'),
                              ),
                            ),
                          ),
                          Text(
                            'Leaderboard position:  ',
                            style: Theme.of(context)
                                .textTheme
                                .headline3
                                .apply(color: Colors.white),
                          ),
                          Text(
                            '8',
                            style: Theme.of(context)
                                .textTheme
                                .headline4
                                .apply(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 60,
                    padding: EdgeInsets.only(top: 10, left: 5, right: 5),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      color: Color(0xff587792).withOpacity(0.7),
                      child: Row(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.only(right: 15),
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/images/Mail.png'),
                              ),
                            ),
                          ),
                          Text(
                            'Recent past invites ',
                            style: Theme.of(context)
                                .textTheme
                                .headline3
                                .apply(color: Colors.white),
                          ),
                          Spacer(),
                          Icon(
                            Icons.arrow_drop_down,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 100,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        child: GestureDetector(
                          onTap: () {
                            screenName = NewPassword();
                            selectMenuOption(context);
                            print("log out tapped");
                          },
                          child: Text(
                            'Change password',
                            style: Theme.of(context).textTheme.subtitle2.apply(
                                color: Colors.white,
                                decoration: TextDecoration.underline),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        child: GestureDetector(
                          child: Text(
                            'Referral link',
                            style: Theme.of(context).textTheme.subtitle2.apply(
                                color: Colors.white,
                                decoration: TextDecoration.underline),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
