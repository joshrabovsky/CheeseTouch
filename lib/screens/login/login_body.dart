import '../../components/auth_input.dart';
import '../../components/auth_password.dart';
import '../../components/back_button.dart';
import '../../components/background.dart';
import '../../components/login_button.dart';
import '../../components/logo.dart';
import '../register/register_screen.dart';
import '../instructions/starter_body.dart';
import 'package:flutter/material.dart';

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
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Container(
        width: double.infinity,
        height: size.height,
        child: Background(
            child: Column(
          children: [
            Logo(),
            BackButtonCustom(),
            Container(
              margin: EdgeInsets.all(30),
              width: size.width,
              child: Text(
                "Welcome back!",
                style: Theme.of(context)
                    .textTheme
                    .headline2
                    .apply(color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
            AuthInput(
              hintText: "Username",
            ),
            AuthPassword(
              hintText: "Password",
            ),
            Container(
                margin: EdgeInsets.only(top: 100),
                width: size.width * 0.8,
                decoration: BoxDecoration(
                    color: Color(0x587792).withOpacity(0.2),
                    borderRadius: BorderRadius.circular(11)),
                child: FlatButton(
                  padding: EdgeInsets.zero,
                  child: RichText(
                    text: TextSpan(
                      style: Theme.of(context)
                          .textTheme
                          .subtitle2
                          .apply(color: Colors.white),
                      children: <TextSpan>[
                        TextSpan(text: "Don't have an account? "),
                        TextSpan(
                            text: 'Register',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return RegisterScreen();
                        },
                      ),
                    );
                  },
                )),
            LoginButton(
              text: "Login",
              press: () {
                screenName = StarterBody();
                selectMenuOption(context);
                print("register tapped");
              },
            )
          ],
        )),
      ),
    );
  }
}
