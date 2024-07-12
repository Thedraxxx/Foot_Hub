import 'package:flutter/material.dart';
import 'package:jutta/Pages/Intro.dart';
import 'package:jutta/models/cart.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const JuttaPasal());
}

class JuttaPasal extends StatelessWidget {
  const JuttaPasal({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context)=> Cart(),
    builder: (context, child) => const MaterialApp(
      title: "Sneaker-Hub",
      debugShowCheckedModeBanner: false,
      home: IntroPage(),
    )
    );
  }
}
