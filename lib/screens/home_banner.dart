import 'dart:math';

import 'package:flutter/material.dart';

class HomeBanner extends StatefulWidget {
  const HomeBanner({super.key});

  @override
  HomeBannerState createState() => HomeBannerState();
}

class HomeBannerState extends State<HomeBanner> {
  int diceNumber = 1;

  void rollDice() {
    diceNumber = Random().nextInt(6) + 1;
    print("New dice number: $diceNumber");
  }

  @override
  Widget build(context) {
    return Center(
      child: Column(
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
      ),
    );
  }
}
