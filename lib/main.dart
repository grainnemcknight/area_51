import 'package:flutter/material.dart';

import 'package:area_51/question.dart';
import 'package:area_51/answer.dart';

// void main() {
//   runApp(App());
// }
void main() => runApp(App());

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AppState();
  }
}

class _AppState extends State<App> {
  var _questionIndex = 0;
  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print("Glad to hear!");
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      "How are you?",
      "Have you visited Area 51 before?",
      "Do you want coffee?"
    ];
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('Area 51'),
            ),
            body: Column(children: [
              Text("Welcome to Wichertstr. 51!"),
              Question(questions[_questionIndex]),
              Answer(_answerQuestion),
              Answer(_answerQuestion),
              Answer(_answerQuestion),
            ])));
  }
}
