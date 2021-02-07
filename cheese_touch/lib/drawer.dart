import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import "starter_body.dart";

class DrawerMenu extends StatelessWidget {
  var screenName;
  
  void closeMenu(BuildContext ctx) {
    Navigator.of(ctx).pop();
  }
 
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
    return Drawer(
      child: Container(
        color: Color(0xff231651),
        padding: EdgeInsets.only(top: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              alignment: Alignment.topRight,
              child: CloseButton(
                color: Colors.white,
                onPressed: () {
                  closeMenu(context);
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 250.0),
              child: Column(
                children: [
                  InkWell(
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                        border: Border(
                          top: BorderSide(color: Colors.black, width: 2.0),
                          left:
                              BorderSide(color: Color(0xff3E4774), width: 10.0),
                        ),
                      ),
                      child: Text(
                        'Status',
                        style: Theme.of(context)
                            .textTheme
                            .headline6
                            .apply(color: Colors.white),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    onTap: () {screenName = StarterBody();
                      selectMenuOption(context);
                      print("startertapped");
                    },
                  ),
                  InkWell(
                    splashColor: Color(0xff231651),
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                        border: Border(
                          top: BorderSide(color: Colors.black, width: 2.0),
                          left:
                              BorderSide(color: Color(0xff3E4774), width: 10.0),
                        ),
                      ),
                      child: Text(
                        'Leaderboard',
                        style: Theme.of(context)
                            .textTheme
                            .headline6
                            .apply(color: Colors.white),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    onTap: () {
                    },
                  ),
                  InkWell(
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                        border: Border(
                          top: BorderSide(color: Colors.black, width: 2.0),
                          left:
                              BorderSide(color: Color(0xff3E4774), width: 10.0),
                        ),
                      ),
                      child: Text(
                        'Profile',
                        style: Theme.of(context)
                            .textTheme
                            .headline6
                            .apply(color: Colors.white),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    onTap: () {
                      
                    },
                  ),
                  InkWell(
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                        border: Border(
                          top: BorderSide(color: Colors.black, width: 2.0),
                          left:
                              BorderSide(color: Color(0xff3E4774), width: 10.0),
                        ),
                      ),
                      child: Text(
                        'How to Play',
                        style: Theme.of(context)
                            .textTheme
                            .headline6
                            .apply(color: Colors.white),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    onTap: () {
              
                    },
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: InkWell(
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 25.0, vertical: 20.0),
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(color: Colors.black, width: 2.0),
                    ),
                  ),
                  child: Row(
                    children: [
                      Text(
                        'Logout ',
                        style: Theme.of(context)
                            .textTheme
                            .headline6
                            .apply(color: Colors.white),
                      ),
                      Image.asset('assets/images/logout.png')
                    ],
                  ),
                ),
                onTap: () {
                  
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}