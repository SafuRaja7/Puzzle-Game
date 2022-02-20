import 'package:flutter/material.dart';

import '../Animations/text_animation.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.blue,
              Colors.lightBlueAccent,
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height:
                    size.width >= 800 ? size.height * 0.07 : size.height * 0.2,
                child: const TextAnimation(
                  "Welcome to Puzzle Game",
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              SizedBox(
                height: 50,
                width: 200,
                child: ElevatedButton(
                  onPressed: (() => Navigator.pushNamed(context, '/second')),
                  child: const Text("Start Game"),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    side: const BorderSide(
                      width: 1,
                      color: Colors.blueAccent,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: SizedBox(
                  height: 200,
                  width: 400,
                  child: Image.network(
                      'https://docs.flutter.dev/assets/images/dash/Dashatars.png'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
