
import 'package:flutter/material.dart';
import 'package:puzzle_challange/widgets/moves.dart';
import 'time.dart';
import 'reset_button.dart';

class Menu extends StatelessWidget {

  final Function reset;
  final  int move;
  final int secondsPassed;
  const Menu(this.reset, this.move, this.secondsPassed, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        ResetButton(reset, "Reset"),
        Move(move),
        Time(secondsPassed),
      ],
    );
  }
}