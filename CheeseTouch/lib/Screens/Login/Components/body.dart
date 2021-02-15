import 'package:CheeseTouch/Components/auth_input.dart';
import 'package:CheeseTouch/Components/auth_password.dart';
import 'package:CheeseTouch/Components/back_button.dart';
import 'package:CheeseTouch/Components/background.dart';
import 'package:CheeseTouch/Components/login_button.dart';
import 'package:CheeseTouch/Components/logo.dart';
import 'package:CheeseTouch/Screens/Register/register_screen.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
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
                style: TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
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
                      style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.white,
                          fontFamily: "Inconsolata"),
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
              press: () {},
            )
          ],
        )),
      ),
    );
  }
}
