import 'package:flutter/material.dart';

class ResetButton extends StatelessWidget {
  final Function reset;
  final String text;

  const ResetButton(this.reset, this.text, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: ()=>reset(),
      style: ElevatedButton.styleFrom(
        primary: Colors.blue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
      ),
      child: const Text("Reset"),
    );
  }
}
