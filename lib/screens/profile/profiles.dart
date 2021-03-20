import '../password/new_password.dart';
import 'package:flutter/material.dart';
import '../../components/appbar.dart';
import '../../components/drawer.dart';
import '../referral/referral_link_pop_up.dart';

class Profile extends StatelessWidget {
  static const routeName = "/profile";
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

  final List<String> invites = ["hyuan", "founders", "rowley"];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        backgroundColor: Color(0xff231651),
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(70.0), child: MyAppBar(false)),
        endDrawer: DrawerMenu(),
        body: Container(
          margin: EdgeInsets.all(0),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/plainbackground.png"),
                fit: BoxFit.fitWidth),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.all(10),
                child: Card(
                  color: Colors.transparent,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(10),
                        width: 120,
                        height: 120,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/avatar.png'),
                          ),
                        ),
                      ),
                      SizedBox(width: 20),
                      Text(
                        'Kev_Cubanito',
                        style: Theme.of(context)
                            .textTheme
                            .headline3
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
              SingleChildScrollView(
                child: Container(
                  height: 200,
                  padding: EdgeInsets.only(top: 10, left: 5, right: 5),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    color: Color(0xff587792).withOpacity(0.7),
                    child: Column(
                      children: [
                        Row(
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
                        Expanded(
                          child: ListView.builder(
                            itemBuilder: (BuildContext context, int index) {
                              return Container(
                                margin: EdgeInsets.all(5),
                                padding: EdgeInsets.only(left: 30),
                                child: Text('> ${invites[index]}',
                                    style: Theme.of(context)
                                        .textTheme
                                        .subtitle2
                                        .apply(color: Colors.white)),
                              );
                            },
                            itemCount: invites.length,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, NewPassword.routeName);
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
                      onTap: () {
                        Navigator.pushNamed(context, ReferralPopUp.routeName);
                        print("referral link clicked");
                      },
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
      ),
    );
  }
}
