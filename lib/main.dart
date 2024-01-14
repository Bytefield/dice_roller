import 'package:dice_roller/app_bar.dart';
import 'package:dice_roller/home_banner.dart';
import 'package:dice_roller/background.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Roll Dice App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Scaffold(
        appBar: CustomAppBar(
          key: null,
        ),
        body: MainBackground(
          HomeBanner(),
        ),
      ),
    );
  }
}
