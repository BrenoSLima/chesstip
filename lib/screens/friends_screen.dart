import 'package:chesstip/repositories/user_repository.dart';
import 'package:flutter/material.dart';

class FriendsScreen extends StatelessWidget {
  final friends = UserRepository.friends;
  const FriendsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Center(
        child: const Text("Amigos"),
      )),
    );
  }
}
