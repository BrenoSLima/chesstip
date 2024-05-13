import 'package:chesstip/screens/loading_match_screen.dart';
import 'package:chesstip/screens/match_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../repositories/match_repository.dart';
import '../screens/home.dart';

class WinLooseAlertDialog extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => WinLooseAlertDialogState();
}

class WinLooseAlertDialogState extends State<WinLooseAlertDialog>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> scaleAnimation;

  @override
  void initState() {
    super.initState();

    controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 450));
    scaleAnimation =
        CurvedAnimation(parent: controller, curve: Curves.elasticInOut);

    controller.addListener(() {
      setState(() {});
    });

    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        color: Colors.transparent,
        child: ScaleTransition(
          scale: scaleAnimation,
          child: Container(
            decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0))),
            child: Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: Container(
                width: 300,
                height: 100,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Ganhou",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    Text(
                      "+ R\$5,00",
                      style: TextStyle(color: Colors.green),
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [ OutlinedButton(
                        child: Text("Sair"),
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(
                            color: Colors.green,
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Home()));
                        },
                      ),
                        SizedBox(
                          width: 15,
                        ),
                        ElevatedButton(
                          child: Text("Jogar novamente"),
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                          ),
                          onPressed: () {
                            final matches = Provider.of<MatchRepository>(context, listen: false);
                            final value = matches.list.last.value;

                            Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LoadingMatchScreen(value),
                              ),
                                  (
                                  route) => false, // RoutePredicate to always return false, which stops removing routes immediately
                            );
                          },
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
