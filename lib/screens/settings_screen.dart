import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          shadowColor: Colors.transparent,
          title: Center(
            child: const Text("Configurações", style: TextStyle(color: Colors.black),),
          )),
      body: Text("Configurações"),
    );
  }
}
