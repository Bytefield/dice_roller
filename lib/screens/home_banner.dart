import 'dart:math';

import 'package:flutter/material.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({
    super.key,
  });

  int diceNumber = 1;

  void rollDice() {
    newNumber = Random(int 6);
  }

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Image(
            image: AssetImage("assets/images/dice/dice-" + diceNumber + ".png"),
            width: 200,
          ),
          TextButton(
            onPressed: rollDice,
            child: const Text(
              "Roll dice!",
            ),
            style: TextButton.styleFrom(foregroundColor: Colors.white, textStyle: const TextStyle(fontSize: 25,),),
          ),
        ],
      ),
    );
  }
}
