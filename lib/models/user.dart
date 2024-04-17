class User {
  int id;
  String name;
  int rating;
  int matches;
  int victories;
  int defeats;
  double balance;
  String avatar = "assets/images/default-avatar.png";
  User({
    required this.id,
    required this.name,
    required this.balance,
    required this.rating,
    required this.victories,
    required this.defeats,
    required this.matches,
  });
}
