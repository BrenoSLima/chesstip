import 'package:chesstip/models/user.dart';

class UserRepository {
  static User user = User(
      id: 1,
      name: "Fabiano Caruana",
      email: 'teste@teste.com',
      balance: 100.00,
      senha: '123');

  static List<User> users = [
    User(
        id: 1,
        name: "Leonardo",
        email: 'teste',
        balance: 100.00,
        senha: '1234'),
    User(id: 2, name: "Luis", email: 'teste', balance: 100.00, senha: '1234'),
    User(id: 3, name: "Mauro", email: 'teste', balance: 100.00, senha: '1234'),
  ];

  static List<User> friends = [
    User(
        id: 1,
        name: "Leonardo",
        email: 'teste',
        balance: 100.00,
        senha: '1234'),
    User(id: 2, name: "Luis", email: 'teste', balance: 100.00, senha: '1234'),
    User(id: 3, name: "Mauro", email: 'teste', balance: 100.00, senha: '1234'),
  ];
}
