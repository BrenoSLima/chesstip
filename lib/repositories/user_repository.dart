import 'package:chesstip/models/user.dart';

class UserRepository {
  static User user = User(id: 1, name: "Teste", balance: 100.00);

  static List<User> users = [
    User(id: 1, name: "Leonardo", balance: 100.00),
    User(id: 2, name: "Luis", balance: 100.00),
    User(id: 3, name: "Mauro", balance: 100.00),
  ];

  static List<User> friends = [
    User(id: 1, name: "Leonardo", balance: 100.00),
    User(id: 2, name: "Luis", balance: 100.00),
    User(id: 3, name: "Mauro", balance: 100.00),
  ];
}
