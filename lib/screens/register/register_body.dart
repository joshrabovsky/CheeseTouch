import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:email_validator/email_validator.dart';

import '../instructions_new/how_to_play_new_player.dart';
import '../../components/auth_input.dart';
import '../../components/auth_password.dart';
import '../../components/auth_input_number.dart';
import '../../components/back_button.dart';
import '../../components/background.dart';
import '../../components/logo.dart';
import '../../components/register_button.dart';
import 'package:flutter/material.dart';

class RegisterBody extends StatefulWidget {
  @override
  _RegisterBodyState createState() => _RegisterBodyState();
}

class _RegisterBodyState extends State<RegisterBody> {
  var screenName;
  String _username, _email, _password, _confirmPassword, _phone;
  final auth = FirebaseAuth.instance;

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
        height: size.height + 200,
        child: Background(
            child: Column(
          children: [
            Logo(),
            BackButtonCustom(),
            SingleChildScrollView(
              child: Container(
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
            ),
            AuthInput(
              hintText: "Username",
              change: (value) {
                setState(() {
                  _email = value.trim();
                });
              },
            ),
            AuthInput(
              hintText: "Email",
              change: (value) {
                setState(() {
                  _email = value.trim();
                });
              },
            ),
            AuthPassword(
              hintText: "Password",
              change: (value) {
                setState(() {
                  _password = value.trim();
                });
              },
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
                auth.createUserWithEmailAndPassword(
                    email: _email, password: _password);
                screenName = HowtoPlayWelcomeScreen();
                selectMenuOption(context);
                print("log out tapped");
              },
            ),
          ],
        )),
      ),
    );
  }
}
