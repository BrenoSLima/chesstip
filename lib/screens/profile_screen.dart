import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var formKey = _formKey;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Perfil"),
      ),
      body: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(children: [
            Form(
                key: formKey,
                child:  Column(children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text('Nome'),
                  ),
                  TextField(
                    decoration: InputDecoration(border: OutlineInputBorder()),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text('Senha'),
                  ),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(border: OutlineInputBorder()),
                  ),
                ])),
            Container(
              margin: EdgeInsets.all(20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff69CE45)),
                onPressed: () {},
                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.check,
                      color: Colors.white,
                    ),
                    Text(
                      'Salvar',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    )
                  ],
                ),
              ),
            )
          ])),
    );
  }
}
