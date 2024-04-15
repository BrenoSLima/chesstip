class User {
  int id;
  String name;
  double balance;
  String avatar = "assets/images/default-avatar.png";
  User({
    required this.id,
    required this.name,
    required this.balance,
  });
}
