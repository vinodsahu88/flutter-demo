import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Questions extends StatelessWidget {
  String question;
  Questions(this.question, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      child: Text(
        question,
        style: const TextStyle(
          fontSize: 60.0,
          fontStyle: FontStyle.italic,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
