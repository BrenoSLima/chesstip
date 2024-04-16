import 'package:flutter/material.dart';

class LoadingMatchScreen extends StatefulWidget {
  const LoadingMatchScreen({Key? key}) : super(key: key);

  @override
  State<LoadingMatchScreen> createState() => _LoadingMatchScreenState();
}

class _LoadingMatchScreenState extends State<LoadingMatchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/chess-bg2.png'),
                  fit: BoxFit.cover // Ajusta a imagem para preencher o container
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
