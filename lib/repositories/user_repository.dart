import 'package:chesstip/models/user.dart';

class UserRepository {
  static List<User> users = [
    User(id: 1, name: "Leonardo"),
    User(id: 2, name: "Luis"),
    User(id: 3, name: "Mauro"),
  ];

  static List<User> friends = [
    User(id: 1, name: "Leonardo"),
    User(id: 2, name: "Luis"),
    User(id: 3, name: "Mauro"),
  ];
}
