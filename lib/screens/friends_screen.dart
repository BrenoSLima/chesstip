import 'package:chesstip/models/user.dart';
import 'package:chesstip/repositories/user_repository.dart';
import 'package:chesstip/screens/user_detail_screen.dart';
import 'package:flutter/material.dart';

class FriendsScreen extends StatefulWidget {
  const FriendsScreen({super.key});

  @override
  State<FriendsScreen> createState() => _FriendsScreenState();
}

class _FriendsScreenState extends State<FriendsScreen> {
  final friends = UserRepository.friends;

  friendDetail(User friend) {
    Navigator.push(context,
        MaterialPageRoute(builder: (_) => UserDetailScreen(user: friend)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          shadowColor: Colors.transparent,
          title: Center(
            child: const Text("Amigos", style: TextStyle(color: Colors.black),),
          )),
      body: ListView.builder(
        itemBuilder: ((context, index) {
          return ListTile(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(12))),
            leading: SizedBox(
              width: 40,
              child: Image.asset(friends[index].avatar),
            ),
            title: Text(
              friends[index].name,
              style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
            ),
            trailing: const Icon(Icons.keyboard_arrow_right),
            selectedTileColor: Colors.indigo[50],
            onTap: () => friendDetail(friends[index]),
          );
        }),
        itemCount: friends.length,
      ),
    );
  }
}
