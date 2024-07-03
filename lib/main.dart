import 'package:flutter/material.dart';
import 'package:jutta/Pages/Intro.dart';

void main() {
  runApp(const JuttaPasal());
}

class JuttaPasal extends StatelessWidget {
  const JuttaPasal({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Sneaker-Hub",
      debugShowCheckedModeBanner: false,
      home: IntroPage(),
    );
  }
}
