import 'package:flutter/material.dart';
import 'package:flutter_course_project01_dice_roller/dice_roller.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, this.color3, {super.key});

  const GradientContainer.purple({super.key})
      : color1 = Colors.deepPurple,
        color2 = Colors.deepPurpleAccent,
        color3 = Colors.purpleAccent;

  final Color color1;
  final Color color2;
  final Color color3;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [color1, color2, color3],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight
        ),
      ),
      child: const Center(
          child: DiceRoller()
      ),
    );
  }
}
