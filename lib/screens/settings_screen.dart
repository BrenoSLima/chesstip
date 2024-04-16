import 'dart:html';
import 'dart:js';

import 'package:chesstip/models/user.dart';
import 'package:chesstip/repositories/user_repository.dart';
import 'package:chesstip/screens/profile_screen.dart';
import 'package:chesstip/screens/user_detail_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  User user = UserRepository.user;
  List screens = ['Perfil', 'Fale Conosco'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          shadowColor: Colors.transparent,
          title: Center(
            child: const Text(
              "Configurações",
              style: TextStyle(color: Colors.black),
            ),
          )),
      body: ListView(children: [
        Container(
            child: ListTile(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(12))),
          leading: SizedBox(
            width: 40,
            child: Icon(Icons.person),
          ),
          title: Text(
            'Perfil',
            style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
          ),
          subtitle: Text('Nome, senha...'),
          onTap: () => {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ProfileScreen()))
          },
        )),
        Container(
          child: ListTile(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(12))),
            leading: SizedBox(
              width: 40,
              child: Icon(Icons.message_rounded),
            ),
            title: Text('Fale Conosco',
              style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
            ),
            subtitle: Text('Sugestões, reclamações...'),
            onTap: () {},
          ),
        ),
        Container(
          child: ListTile(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(12))),
            leading: SizedBox(
              width: 40,
              child: Icon(Icons.help),
            ),
            title: Text('Perguntas Frequentes',
              style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
            ),
            subtitle: Text('Como depositar dinheiro? Como...'),
            onTap: () {},
          ),
        ),
        Container(
          child: ListTile(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(12))),
            leading: SizedBox(
              width: 40,
              child: Icon(Icons.info),
            ),
            title: Text('Sobre nós',
              style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
            ),subtitle: Text(''),
            onTap: () {},
          ),
        )
      ]),
    );
  }
}
