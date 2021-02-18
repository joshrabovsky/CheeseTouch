import 'package:flutter/material.dart';
import 'starter_body.dart';
import 'appbar.dart';
import 'drawer.dart';
// Only difference between these 2 classes is one doesn't have a drawer (welcome screen) and the other one does (normal how to play page)
class HowtoPlayWelcomeScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    String playerName = "ghuang72";
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
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(70.0), child: MyAppBar(false)),
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
            children: [
              SizedBox(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.05),
              Container(
                child: Text(
                  'Welcome $playerName',
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .headline1
                      .apply(color: Colors.white),
                ),
              ),
              SizedBox(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.03),
              Container(
                height: MediaQuery.of(context).size.height * 0.50,
                child: SingleChildScrollView(
                  padding: EdgeInsets.symmetric(horizontal: 30.0),
                  child: Text(
                    'If you have the cheese touch, you must gain points by infecting as many other people as possible by connecting with other players\' phones or entering a username.\n\nConnecting with another player who already is infected will cause both of you to lose points so choose wisely.\n\nIf you do not have the cheese touch, gain points by connecting with other players who are also not infected.\n\nConnecting with a player who has the cheese touch results in losing points and becoming infeced as well.\n\n\nTalk carefully with others and strategize how to earn the most points.\n\nGOOD LUCK.',
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .subtitle1
                        .apply(color: Colors.white),
                  ),
                ),
              ),
              Container(
                padding:
                    EdgeInsets.all(MediaQuery.of(context).size.height * 0.05),
                child: Text(
                  '(scroll to continue reading)',
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      .apply(color: Colors.yellow),
                ),
              ),
              FlatButton(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                  child: Text(
                    'Let\'s Start!',
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .headline3
                        .apply(color: Color(0xff231651)),
                  ),
                  padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height * 0.02, horizontal: MediaQuery.of(context).size.width * 0.30),
                  onPressed: () {
                    screenName = StarterBody();
                    selectMenuOption(context);
                    print("returning to status page");
                  }),
            ],
          ),
        ],
      ),
    );
  }
}                               