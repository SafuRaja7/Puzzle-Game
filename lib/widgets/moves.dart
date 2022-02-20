
import 'package:flutter/material.dart';

class Move extends StatelessWidget {

  final int move;
  const Move(this.move, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0),
      child: SizedBox(
        height: 20,
        width: 100,
        child: Text(
          "Moves: $move",
          style: const TextStyle(
              color: Colors.white,
              decoration: TextDecoration.none,
              fontSize: 18
          ),
        ),
      ),
    );
  }
}