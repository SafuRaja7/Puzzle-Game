import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class TextAnimation extends StatelessWidget {
  final String text;
  const TextAnimation(this.text, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(animatedTexts: [
      TyperAnimatedText(
        text,
        speed: const Duration(milliseconds: 100),
        textAlign: TextAlign.center,
        textStyle:  TextStyle(
          fontSize: MediaQuery.of(context).size.height * 0.07,
          fontFamily: 'ChrustyRock-ORLA',
          color: const Color.fromARGB(255, 0, 76, 138),
          fontWeight: FontWeight.bold,
          decoration: TextDecoration.none,
        ),
      ),
    ]);
  }
}
