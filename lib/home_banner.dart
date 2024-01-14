import 'package:dice_roller/dice_widget.dart';
import 'package:flutter/material.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: DiceWidget(),
    );
  }
}
