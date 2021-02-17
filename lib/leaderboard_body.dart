import "package:flutter/material.dart";

import "appbar.dart";
import "drawer.dart";

class LeaderboardBody extends StatefulWidget {
  @override
  _LeaderboardBodyState createState() => _LeaderboardBodyState();
}

class _LeaderboardBodyState extends State<LeaderboardBody> {
  final String myUsername = "ghuang72";

  final List<Map<String, Object>> entries = [
    {"rank": 1, "username": "hyuan", "points": 49002},
    {"rank": 2, "username": "random_username", "points": 47023},
    {"rank": 3, "username": "josh", "points": 46219},
    {"rank": 4, "username": "western", "points": 24301},
    {"rank": 5, "username": "founders", "points": 23411},
    {"rank": 6, "username": "network", "points": 21022},
    {"rank": 7, "username": "cheese_12", "points": 19201},
    {"rank": 8, "username": "ghuang72", "points": 18300},
    {"rank": 9, "username": "zab", "points": 15123},
    {"rank": 10, "username": "greg", "points": 11212},
    {"rank": 11, "username": "rowley", "points": 10291},
    {"rank": 12, "username": "wimpy", "points": 9900},
    {"rank": 13, "username": "kid", "points": 8172},
    {"rank": 14, "username": "flutter88", "points": 7801},
    {"rank": 15, "username": "abc123", "points": 92},
  ];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        backgroundColor: Color(0xff231651),
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(70.0), child: MyAppBar(false)),
        endDrawer: DrawerMenu(),
        body: Container(
          margin: EdgeInsets.all(0),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/plainbackground.png"),
                fit: BoxFit.fitWidth),
          ),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                child: Text(
                  "LEADERBOARD",
                  style: Theme.of(context)
                      .textTheme
                      .headline1
                      .apply(color: Colors.white),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 20, right: 20, top: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "Rank",
                        style: Theme.of(context)
                            .textTheme
                            .headline5
                            .apply(color: Colors.white),
                      ),
                    ),
                    Expanded(
                      flex: 6,
                      child: Container(
                        padding: EdgeInsets.all(10),
                        child: Text("Username",
                            style: Theme.of(context)
                                .textTheme
                                .headline5
                                .apply(color: Colors.white)),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        child: Text("Points",
                            style: Theme.of(context)
                                .textTheme
                                .headline5
                                .apply(color: Colors.white)),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                    padding: EdgeInsets.only(top: 0),
                    itemCount: entries.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        color: entries[index]["username"] != myUsername
                            ? Color.fromRGBO(88, 119, 146, 0.8)
                            : Color.fromRGBO(244, 224, 77, 0.8),
                        margin:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                        elevation: 6,
                        child: Container(
                          height: 40,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  width: 50,
                                  padding: EdgeInsets.all(10),
                                  child: Center(
                                    child: Text(
                                      "${entries[index]["rank"]}",
                                      style: Theme.of(context)
                                          .textTheme
                                          .subtitle1
                                          .apply(color: Colors.white),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 6,
                                  child: Container(
                                    padding: EdgeInsets.all(10),
                                    child: Text(
                                      "${entries[index]["username"]}",
                                      style: Theme.of(context)
                                          .textTheme
                                          .subtitle1
                                          .apply(color: Colors.white),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    child: Text(
                                      "${entries[index]["points"]}",
                                      style: Theme.of(context)
                                          .textTheme
                                          .subtitle1
                                          .apply(color: Colors.white),
                                    ),
                                  ),
                                ),
                              ]),
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
