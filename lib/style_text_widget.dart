import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  String text;

  TextWidget(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 24,
      ),
    );
  }
}