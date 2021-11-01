import 'package:flutter/material.dart';

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
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Quiz App",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz App"),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Text("Hello Home Page")
          ],
        )
      )
    );
  }
}
