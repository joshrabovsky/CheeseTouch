import "package:flutter/foundation.dart";

class Entries {
  int rank;
  String username;
  int points;

  Entries({
    @required this.points,
    @required this.username,
    @required this.rank,
  });
}
