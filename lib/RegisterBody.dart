import 'instructions.dart';
import 'auth_input.dart';
import 'auth_password.dart';
import 'auth_input_number.dart';
import 'back_button.dart';
import 'background.dart';
import 'logo.dart';
import 'register_button.dart';
import 'package:flutter/material.dart';

class RegisterBody extends StatelessWidget {
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
        height: size.height + 25,
        child: Background(
            child: Column(
          children: [
            Logo(),
            BackButtonCustom(),
            Container(
              margin: EdgeInsets.all(10),
              width: size.width * 0.8,
              child: Text(
                "Create an account to play!",
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
            AuthPassword(
              hintText: "Confirm password",
            ),
            AuthInputNumber(
              hintText: "Phone Number",
            ),
            RegisterButton(
              text: "Register",
              press: () {
                screenName = HowtoPlayWelcomeScreen();
                selectMenuOption(context);
                print("log out tapped");
              },
            )
          ],
        )),
      ),
    );
  }
}
