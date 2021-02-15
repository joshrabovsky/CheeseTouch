import 'package:CheeseTouch/Screens/Welcome/Components/background.dart';
import 'package:CheeseTouch/components/login_button.dart';
import 'package:CheeseTouch/components/register_button.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; // Total height and width
    return Background(
      child: Positioned(
        top: 150,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Positioned(
                top: 150, child: Image.asset("assets/images/cheese.png")),
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
            LoginButton(
              text: "Login",
              press: () {},
            ),
            RegisterButton(
              text: "Sign Up",
              press: () {},
            )
          ],
        ),
      ),
    );
  }
}
