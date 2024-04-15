import 'package:chesstip/components/win_history_component.dart';
import 'package:chesstip/repositories/match_repository.dart';
import 'package:flutter/material.dart';

import '../components/defeat_history_component.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  winMatch(match) {
    return match.winnerId == 1;
  }

  final matches = MatchRepository.matches;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
          shadowColor: Colors.transparent,
          title: Center(
            child: const Text("Histórico", style: TextStyle(color: Colors.black),),
          )),
      body: ListView.builder(
        itemBuilder: ((context, index) {
          if (winMatch(matches[index])) {
            return WinHistoryComponent(match: matches[index]);
          } else {
            return DefeatHistoryComponent(match: matches[index]);
          }
        }),
        itemCount: matches.length,
      ),
    );
  }
}
