import 'package:CheeseTouchApp/screens/referral/referral_link_pop_up.dart';

import 'screens/main/main_screen.dart';
import 'components/constants.dart';
import 'package:flutter/material.dart';
import 'screens/profile/profiles.dart';
import 'screens/password/new_password.dart';
import 'screens/referral/referral_link_pop_up.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'CheeseTouch',
        home: MainScreen(),
        theme: ThemeData(
          fontFamily: "Inconsolata",
          primaryColor: kPrimaryColor,
          scaffoldBackgroundColor: Colors.white,
          primaryColorLight: Color(0xff587792),
          primaryColorDark: Color(0xff8DB1AB),
          accentColor: Color(0xff1C1140),
          textTheme: ThemeData.light().textTheme.copyWith(
                headline1: TextStyle(
                    fontFamily: 'Inconsolata',
                    fontWeight: FontWeight.bold,
                    fontSize: 40),
                headline2: TextStyle(
                    fontFamily: 'Inconsolata',
                    fontSize: 34,
                    fontWeight: FontWeight.bold),
                headline3: TextStyle(
                    fontFamily: 'Inconsolata',
                    fontWeight: FontWeight.bold,
                    fontSize: 24),
                headline4: TextStyle(fontFamily: 'Inconsolata', fontSize: 24),
                headline5: TextStyle(
                    fontFamily: 'Inconsolata',
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
                headline6: TextStyle(
                    fontFamily: 'Inconsolata',
                    fontSize: 64,
                    fontWeight: FontWeight.bold),
                subtitle1: TextStyle(
                    fontFamily: 'Inconsolata',
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
                subtitle2: TextStyle(
                  fontFamily: 'Inconsolata',
                  fontSize: 18,
                ),
                bodyText1: TextStyle(
                    fontFamily: 'Inconsolata',
                    fontWeight: FontWeight.bold,
                    fontSize: 14),
                bodyText2: TextStyle(fontFamily: 'Inconsolata', fontSize: 14),
              ),
        ),
        routes: {
          Profile.routeName: (ctx) {
            return Profile();
          },
          NewPassword.routeName: (ctx) {
            return NewPassword();
          },
          ReferralPopUp.routeName: (ctx) {
            return ReferralPopUp();
          }
        });
  }
}
