import 'package:flutter/material.dart';
import 'package:quiz/answer.dart';
import 'package:quiz/question.dart';

int main() {
  runApp(const HomePage());
  return 0;
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  int idx = 0;
  void changeQuestion() {
    setState(() {
      idx++;
    });
  }

  var questionList = [
    {
      'question': '1. What is your favorite color?',
      'answers': ['red', 'black', 'orange']
    },
    {
      'question': '2. What is your favorite color?',
      'answers': ['red', 'black', 'orange']
    },
    {
      'question': '3. What is your favorite color?',
      'answers': ['red', 'black', 'orange']
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Quiz App",
        home: Scaffold(
            appBar: AppBar(
              title: Text("Quiz App"),
              centerTitle: true,
            ),
            body: idx < questionList.length ? Column(
              children: [
                Question(questionList[idx]['question'] as String),
                ...(questionList[idx]['answers'] as List<String>).map((ans) {
                  return Answer(ans, changeQuestion);
                }).toList()
              ],
            )
            : Text("You have completed this quiz"),
            )
            );
  }
}
