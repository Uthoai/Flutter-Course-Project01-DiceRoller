import 'package:flutter/material.dart';
import 'package:flutter_course_project01_dice_roller/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        //backgroundColor: Colors.tealAccent,
          body: GradientContainer(
              Colors.deepPurple,
              Colors.deepPurpleAccent,
              Colors.purpleAccent)
      ),
    ),
  );
}