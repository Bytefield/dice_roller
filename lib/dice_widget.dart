import 'dart:math';

import 'package:flutter/material.dart';

final randomizer = Random();

class DiceWidget extends StatefulWidget {
  const DiceWidget({super.key});

  @override
  State<DiceWidget> createState() => _DiceWidgetState();
}

class _DiceWidgetState extends State<DiceWidget> {
  int diceNumber = 1;

  void rollDice() {
    setState(() {
      diceNumber = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Image(
          key: ValueKey(diceNumber),
          image: AssetImage("assets/images/dice/dice-$diceNumber.png"),
          width: 200,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 25,
            ),
          ),
          child: const Text(
            "Roll dice!",
          ),
        ),
      ],
    );
  }
}
