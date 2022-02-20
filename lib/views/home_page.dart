import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:puzzle_challange/cubit/startgame_cubit.dart';
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
                height: 300,
              ),
              SizedBox(
                height: 50,
                width: 200,
                child: BlocConsumer<StartgameCubit, StartgameState>(
                  listener: (context, state) {
                    if (state is StartGameSuccess) {
                      Navigator.pushNamed(context, '/second');
                    }
                  },
                  builder: (context, state) {
                    if (state is StartGameLoading) {
                      return ElevatedButton(
                        onPressed: () {},
                        child: const CircularProgressIndicator(
                          valueColor: AlwaysStoppedAnimation(Color.fromARGB(255, 160, 201, 235)),
                        ),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          side: const BorderSide(
                            width: 1,
                            color: Colors.blueAccent,
                          ),
                        ),
                      );
                    }
                    return ElevatedButton(
                      onPressed: () async {
                        final gametCubit =
                            BlocProvider.of<StartgameCubit>(context);
                        await gametCubit.start();
                      },
                      child: const Text('Play Game'),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        side: const BorderSide(
                          width: 1,
                          color: Colors.blueAccent,
                        ),
                      ),
                    );
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: SizedBox(
                      height: 200,
                      width: 400,
                      child: Image.network(
                          'https://docs.flutter.dev/assets/images/dash/Dashatars.png'),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: SizedBox(
                      height: 200,
                      width: 400,
                      child: Image.network(
                          'https://docs.flutter.dev/assets/images/dash/Dashatars.png'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
