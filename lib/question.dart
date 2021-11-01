import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String question;
  Question(this.question);
  Widget build(BuildContext context) {
    return Container(
      child: Text(question),
    );
  }
}
