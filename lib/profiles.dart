import 'package:CT_APP/newPassword.dart';
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
    return Scaffold(
       appBar: PreferredSize(
          preferredSize: Size.fromHeight(70.0), child: MyAppBar()),
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
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
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
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '18300',
                          style: TextStyle(color: Colors.white, fontSize: 24),
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
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '299',
                          style: TextStyle(color: Colors.white, fontSize: 24),
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
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '8',
                          style: TextStyle(color: Colors.white, fontSize: 24),
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
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
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
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 120, left: 10),
                      child: GestureDetector(
                        onTap: () {
                          screenName = NewPassword();
                          selectMenuOption(context);
                          print("log out tapped");},
                        child: Text(
                          'Change password',
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: Colors.white,
                              fontSize: 20),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 120, left: 120),
                      child: GestureDetector(
                        child: Text(
                          'Referral link',
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: Colors.white,
                              fontSize: 20),
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
    );
  }
}
