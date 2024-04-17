import 'package:chesstip/components/login_signup_title_text.dart';
import 'package:chesstip/components/navigation_bar.dart';
import 'package:chesstip/screens/home.dart';
import 'package:chesstip/screens/loading_match_screen.dart';
import 'package:chesstip/screens/login_signup_screen.dart';
import 'package:chesstip/screens/match_screen.dart';
import 'package:chesstip/screens/play_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignupLoginScreen(),
    );
  }
}
