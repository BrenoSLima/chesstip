class User {
  String nome;
  double saldo;

  User(this.nome, this.saldo);

  String get consultaSaldo {
    return "R$saldo";
  }
}
