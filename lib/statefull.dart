import 'dart:math';

import 'package:flutter/material.dart';

class DiceApp extends StatefulWidget {
  @override
  _DiceAppState createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  //deklarasi variable
  int LeftDiceNumber = 1;
  int RightDiceNumber = 1;
  //membuat function
  void rubahDadu() {
    setState(() {
      LeftDiceNumber = Random().nextInt(6) + 1;
    });
    setState(() {
      RightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: Row(
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  rubahDadu();
                },
                child: Image.asset(
                  'images/dice$LeftDiceNumber.png',
                ),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  rubahDadu();
                },
                child: Image.asset('images/dice$RightDiceNumber.png'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
