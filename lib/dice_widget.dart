import 'dart:math';

import 'package:dice_roller/components/button.dart';
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
        Button(
          onPressed: rollDice,
        ),
      ],
    );
  }
}
