import 'package:flutter/material.dart';
import 'package:flutter_course_project01_dice_roller/style_text_widget.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget{
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }

}

class _DiceRollerState extends State<DiceRoller>{

  var currentDiceRoll = 1;

  void rollerDice() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(6)+1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/images/dice-$currentDiceRoll.png', width: 220, height: 220,),

        const SizedBox(height: 20,), //space for between image widget and text button widget

        TextButton(
          onPressed: rollerDice,
          style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              textStyle: const TextStyle(
                  fontSize: 24, fontWeight:
              FontWeight.bold)),
          child: TextWidget("Dice Roller"),
        )
      ],
    );
  }

}