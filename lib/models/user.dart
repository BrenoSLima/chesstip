import 'dart:js_interop';

class User {
  int id;
  String name;
  double saldo;
  User({
    required this.id,
    required this.name,
    required this.saldo,
  });

  String get consultaSaldo {
    return "R\$ $saldo";
  }
}
