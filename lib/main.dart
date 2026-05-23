import 'package:basketball_counter/home_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BasketballCounter());
}

class BasketballCounter extends StatelessWidget {
  const BasketballCounter({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple, brightness: Brightness.dark)),
      home: HomeView(),
    );
  }
}
