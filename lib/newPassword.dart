import 'package:flutter/material.dart';

class Password extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
    );
  }
}

class NewPassword extends StatefulWidget{
  @override
  _NewPasswordState createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword>{
  @override
  Widget build (BuildContext context){
    return Scaffold (
      body: Stack (
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
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 250),
              child: Row(
                children: <Widget>[
                  SizedBox(
                    width: 180,
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: "Enter phone number",
                        labelStyle: TextStyle(
                          fontSize: 18,
                          color: Color.fromRGBO(192, 192, 192, 100),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 80),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget> [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(11),
                    child: FlatButton(
                      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 100),
                      color: Colors.white,
                      onPressed: (){
                        showDialog(
                          context: context,
                          builder: (BuildContext context) => buildPopupDialog(context)
                          );
                      },
                      child: Text (
                        "ENTER",
                        style: TextStyle (
                          color: Colors.black,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  )
                ],
              ),
            ),
        ],
      ),
    );
  }
}

Widget buildPopupDialog(BuildContext context) {
  return new AlertDialog(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    contentPadding: EdgeInsets.all(0),
    content: Container (
      height: 300,
      child: Column (
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            alignment: Alignment.topRight,
            child: FlatButton (
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Icon (
                Icons.close,
                color: Colors.grey,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 0, top: 10, left: 0, right: 0),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Color(0xffb3b3b3),
              borderRadius: BorderRadius.circular(10),
            ),
            width: double.infinity,
            child: Column(
              children: [
                Text(
                  "A link was sent to your number. Click on it to rest password.",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                  textAlign: TextAlign.start,
                ),
                Text("Didn't receive a message? Click to resend link",
                    style: TextStyle(color: Colors.white, fontSize: 20)),
              ],
            ),
          ),
        ],
      )
    )
  );
}