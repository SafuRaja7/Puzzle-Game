import 'package:flutter/material.dart';
import '../widgets/grid_button.dart';

class Grid extends StatelessWidget {
  final List numbers;
  final Function clickGrid;

 const Grid(this.numbers, this.clickGrid, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: 400,
      padding: const EdgeInsets.all(10),
      child: GridView.builder(
        padding: const EdgeInsets.all(10.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          mainAxisSpacing: 5,
          crossAxisSpacing: 5,
        ),
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return numbers[index] != 0
              ? GridButton(
                  "${numbers[index]}",
                  () {
                    clickGrid(index);
                  },
                )
              : const SizedBox.shrink();
        },
      ),
    );
  }
}
