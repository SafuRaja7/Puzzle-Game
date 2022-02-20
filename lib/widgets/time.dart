import 'package:flutter/material.dart';

class Time extends StatelessWidget {

  final int secondsPassed;
  const Time(this.secondsPassed, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0),
      child: Text(
        "Time: $secondsPassed",
        style: const TextStyle(
          fontSize: 18,
          decoration: TextDecoration.none,
          color: Colors.white,
        ),
      ),
    );
  }
}