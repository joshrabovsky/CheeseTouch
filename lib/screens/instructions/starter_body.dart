import "package:flutter/material.dart";

import '../username/enter_username.dart';
import '../../components/appbar.dart';
import '../../components/drawer.dart';

class StarterBody extends StatefulWidget {
  @override
  _StarterBodyState createState() => _StarterBodyState();
}

class _StarterBodyState extends State<StarterBody> {
  var isInfected = true;

  Map<String, Object> starterDesignInfected = {
    "status": "INFECTED",
    "color": Color(0xffF4E04D),
    "border": Color(0xff587792),
    "image": "assets/images/infectedcheese.png",
  };

  Map<String, Object> starterDesignNormal = {
    "status": "NOT INFECTED",
    "color": Color(0xff587792),
    "border": Color(0xffF4E04D),
    "image": "assets/images/normalcheesefixed.png",
  };

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        backgroundColor: isInfected
            ? starterDesignInfected["color"]
            : starterDesignNormal["color"],
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(70.0), child: MyAppBar(false)),
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
                      padding: EdgeInsets.all(0),
                      child: isInfected
                          ? Image.asset(
                              starterDesignInfected["image"],
                              height: 290,
                              width: 290,
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
                          style: Theme.of(context)
                              .textTheme
                              .headline2
                              .apply(color: Colors.black),
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
                          style: Theme.of(context)
                              .textTheme
                              .headline1
                              .apply(color: Colors.black),
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
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    width: double.infinity,
                    child: Column(
                      children: [
                        ListTile(
                          contentPadding: EdgeInsets.only(top: 20),
                          leading: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Icon(
                              Icons.star,
                              color: Colors.black,
                            ),
                          ),
                          title: Text(
                            "Current points: 15151",
                            style: Theme.of(context)
                                .textTheme
                                .headline3
                                .apply(color: Colors.black),
                          ),
                        ),
                        ListTile(
                          contentPadding: EdgeInsets.only(bottom: 20),
                          leading: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Icon(
                              Icons.emoji_events,
                              color: Colors.black,
                            ),
                          ),
                          title: Text(
                            "Current ranking: 15/2000",
                            style: Theme.of(context)
                                .textTheme
                                .headline3
                                .apply(color: Colors.black),
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
      ),
    );
  }
}
