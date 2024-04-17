import 'package:chesstip/models/user.dart';

class UserRepository {
  static User user = User(
      id: 1,
      name: "Fabiano Caruana",
      balance: 9800.00,
      victories: 550,
      matches: 567,
      defeats: 10,
      rating: 2400,
      email: "test@test.com",
      senha: "1234");

  static List<User> users = [
    User(
        id: 1,
        name: "Leonardo",
        balance: 100.00,
        victories: 1,
        matches: 2,
        defeats: 1,
        rating: 1100,
        email: "test@test.com",
        senha: "1234"),
    User(
        id: 2,
        name: "Luis",
        balance: 100.00,
        victories: 1,
        matches: 2,
        defeats: 1,
        rating: 1100,
        email: "test@test.com",
        senha: "1234"),
    User(
        id: 3,
        name: "Mauro",
        balance: 100.00,
        victories: 1,
        matches: 2,
        defeats: 1,
        rating: 1100,
        email: "test@test.com",
        senha: "1234"),
  ];

  static List<User> friends = [
    User(
        id: 1,
        name: "Henrique",
        balance: 1250.00,
        victories: 127,
        matches: 200,
        defeats: 58,
        rating: 922,
        email: "test@test.com",
        senha: "1234"),
    User(
        id: 2,
        name: "Brunna",
        balance: 300.00,
        victories: 400,
        matches: 700,
        defeats: 300,
        rating: 900,
        email: "test@test.com",
        senha: "1234"),
    User(
        id: 3,
        name: "Breno",
        balance: 450.00,
        victories: 450,
        matches: 700,
        defeats: 200,
        rating: 1500,
        email: "test@test.com",
        senha: "1234"),
  ];
}
