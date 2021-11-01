import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback functionHandler;
  final String answer;
  Answer(this.answer, this.functionHandler);
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        RaisedButton(
          child: Text(answer),
          onPressed: functionHandler,
        )
      ]),
    );
  }
}
