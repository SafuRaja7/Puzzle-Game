import 'package:flutter/material.dart';
import 'package:puzzle_challange/views/board.dart';
import 'package:puzzle_challange/Views/home_page.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy();
  
  runApp(const SlidingPuzzle());
}

class SlidingPuzzle extends StatelessWidget {
  const SlidingPuzzle({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Puzzle Game",
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/second': (context) => const Board(),
      },
    );
  }
}
