import 'package:flutter/material.dart';
import 'package:chesstip/repositories/user_repository.dart';
import 'package:intl/intl.dart';
import 'package:chesstip/screens/user_detail_screen.dart';
import '../models/user.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  @override
  _CustomAppBarState createState() => _CustomAppBarState();

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class _CustomAppBarState extends State<CustomAppBar> {
  User user = UserRepository.user;
  NumberFormat real = NumberFormat.currency(locale: "pt_BR", name: 'R\$');

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      shadowColor: Colors.black,
      leading: Padding(
        padding: EdgeInsets.zero,
        child: IconButton(
          color: Colors.black,
          onPressed: () {},
          icon: const Icon(Icons.account_circle),
        ),
      ),
      titleSpacing: 0,
      title: Text(
        user.name,
        style: const TextStyle(fontSize: 18, color: Colors.black),
      ),
      actions: [
        Center(
          child: Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Text(
              real.format(user.balance),
              style: const TextStyle(
                fontSize: 20,
                color: Colors.black
              ),
            ),
          ),
        )
      ],
    );
  }
}