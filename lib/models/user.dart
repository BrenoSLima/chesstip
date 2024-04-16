class User {
  int id;
  String name;
  String email;
  double balance;
  String avatar = "assets/images/default-avatar.png";
  String senha;

  User({
    required this.id,
    required this.name,
    required this.email,
    required this.balance,
    required this.senha,
  });
}
