import 'package:chesstip/components/win_history_component.dart';
import 'package:flutter/material.dart';

import '../components/defeat_history_component.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 50,),
          WinHistoryComponent(),
          DefeatHistoryComponent()
        ],
      ),
    );
  }
}
