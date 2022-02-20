import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:puzzle_challange/cubit/startgame_cubit.dart';
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
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => StartgameCubit(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Puzzle Game",
        initialRoute: '/',
        routes: {
          '/': (context) => const HomePage(),
          '/second': (context) => const Board(),
        },
      ),
    );
  }
}
