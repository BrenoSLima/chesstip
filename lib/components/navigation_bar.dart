import 'package:chesstip/models/user.dart';
import 'package:chesstip/screens/friends_screen.dart';
import 'package:chesstip/screens/history_screen.dart';
import 'package:chesstip/screens/play_screen.dart';
import 'package:chesstip/screens/settings_screen.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  User pessoa = User("teste", 100.00);

  int currentIndex = 0;
  final double iconSize = 20;
  final double selectedFontSize = 12;
  final double unselectedFontSize = 8;
  final screens = [
    const PlayScreen(),
    const HistoryScreen(),
    const FriendsScreen(),
    const SettingsScreen(),
  ];

  bottomNavigation() {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      type: BottomNavigationBarType.fixed,
      onTap: (value) => setState(() => currentIndex = value),
      selectedFontSize: selectedFontSize,
      unselectedFontSize: unselectedFontSize,
      items: [
        BottomNavigationBarItem(
            icon: SizedBox(
              width: iconSize,
              child: Image.asset(
                "assets/icons/chess-white.png",
              ),
            ),
            activeIcon: SizedBox(
                width: iconSize,
                child: Image.asset(
                  "assets/icons/chess-black.png",
                )),
            label: "Jogar"),
        BottomNavigationBarItem(
            icon: SizedBox(
              width: iconSize,
              child: Image.asset("assets/icons/historical-white.png"),
            ),
            activeIcon: SizedBox(
              width: iconSize,
              child: Image.asset("assets/icons/historical-black.png"),
            ),
            label: "Histórico"),
        BottomNavigationBarItem(
            icon: SizedBox(
              width: iconSize,
              child: Image.asset("assets/icons/friends-white.png"),
            ),
            activeIcon: SizedBox(
              width: iconSize,
              child: Image.asset("assets/icons/friends-black.png"),
            ),
            label: "Amigos"),
        BottomNavigationBarItem(
            icon: SizedBox(
              width: iconSize,
              child: Image.asset("assets/icons/gear-white.png"),
            ),
            activeIcon: SizedBox(
              width: iconSize,
              child: Image.asset("assets/icons/gear-black.png"),
            ),
            label: "Configurações")
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: IndexedStack(
        index: currentIndex,
        children: screens,
      ),
      bottomNavigationBar: bottomNavigation(),
    );
  }

  appBar() {
    return AppBar(
      leading: Padding(
        padding: EdgeInsets.zero,
        child: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.account_circle),
        ),
      ),
      title: Padding(
        padding: const EdgeInsets.only(right: 1),
        child: Text(
          pessoa.nome,
          style: TextStyle(fontSize: 25),
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Text(
            pessoa.consultaSaldo.toString(),
            style: TextStyle(fontSize: 20),
          ),
        )
      ],
    );
  }
}
