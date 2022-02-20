import 'package:flutter/material.dart';

class MyTitle extends StatelessWidget {
  const MyTitle({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: const Text(
        "Puzzle Game",
        textAlign: TextAlign.center,
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: 'Hind',
            color: Color.fromARGB(255, 0, 76, 138),
            decoration: TextDecoration.none),
      ),
    );
  }
}
