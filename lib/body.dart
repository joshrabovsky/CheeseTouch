import 'package:flutter/material.dart';
import 'background.dart';
import 'constants.dart';
import 'starter_body.dart';

class Body extends StatelessWidget {

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
    Size size = MediaQuery.of(context).size; // Total height and width
    return Background(
      child: Positioned(
        top: 350,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: size.width * 0.6,
              child: Text(
                "CHEESE TOUCH",
                style: TextStyle(
                    fontSize: 64,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              width: size.width * 0.8,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 11,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(11),
                child: FlatButton(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 45),
                    color: Colors.white,
                    onPressed: () {
                      screenName = StarterBody();
                      selectMenuOption(context);
                      print("startertapped");
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(
                          color: kPrimaryColor,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    )
                  ),
              ),
            ),
            Container(
              width: size.width * 0.8,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 2.0),
                borderRadius: BorderRadius.circular(11),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.7),
                    spreadRadius: 1,
                    blurRadius: 11,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(11),
                child: FlatButton(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 45),
                    color: kPrimaryColor,
                    onPressed: () {},
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
