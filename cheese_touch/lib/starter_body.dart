import "package:flutter/material.dart";

import "./enter_username.dart";
import "./app_bar.dart";
import "./drawer.dart";

class StarterBody extends StatefulWidget {
  @override
  _StarterBodyState createState() => _StarterBodyState();
}

class _StarterBodyState extends State<StarterBody> {
  var isInfected = false;

  Map<String, Object> starterDesignInfected = {
    "status": "INFECTED",
    "color": Color(0xffF4E04D),
    "border": Colors.white,
    "image": "assets/images/infectedcheese.png",
  };

  Map<String, Object> starterDesignNormal = {
    "status": "NOT INFECTED",
    "color": Colors.white,
    "border": Color(0xffF4E04D),
    "image": "assets/images/normalcheesefixed.png",
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isInfected
          ? starterDesignInfected["color"]
          : starterDesignNormal["color"],
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(70.0), child: MyAppBar()),
      endDrawer: DrawerMenu(),
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    child: isInfected
                        ? Image.asset(
                            starterDesignInfected["image"],
                            height: 320,
                            width: 320,
                            fit: BoxFit.fitWidth,
                          )
                        : Image.asset(
                            starterDesignNormal["image"],
                            height: 280,
                            width: 280,
                            fit: BoxFit.fitWidth,
                          ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "STATUS",
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                      Divider(
                          height: 20,
                          thickness: 4,
                          indent: 50,
                          endIndent: 50,
                          color: Colors.black),
                      Text(
                        isInfected
                            ? starterDesignInfected["status"]
                            : starterDesignNormal["status"],
                        style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ],
              ),
              Card(
                color: isInfected
                    ? starterDesignInfected["color"]
                    : starterDesignNormal["color"],
                margin: EdgeInsets.all(10),
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                      color: isInfected
                          ? starterDesignInfected["border"]
                          : starterDesignNormal["border"],
                      width: 5),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                  width: double.infinity,
                  child: Column(
                    children: [
                      ListTile(
                        contentPadding: EdgeInsets.all(0),
                        leading: Padding(
                          padding: const EdgeInsets.only(left: 50),
                          child: Icon(
                            Icons.star,
                            color: Colors.black,
                          ),
                        ),
                        title: Text(
                          "Current points: 15151",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      ListTile(
                        contentPadding: EdgeInsets.all(0),
                        leading: Padding(
                          padding: const EdgeInsets.only(left: 50),
                          child: Icon(
                            Icons.emoji_events,
                            color: Colors.black,
                          ),
                        ),
                        title: Text(
                          "Current ranking: 15/2000",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                color: isInfected
                    ? starterDesignInfected["color"]
                    : starterDesignNormal["color"],
                margin: EdgeInsets.all(10),
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                      color: isInfected
                          ? starterDesignInfected["border"]
                          : starterDesignNormal["border"],
                      width: 5),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: FormField(
                  builder: (_) {
                    return EnterUsername();
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
