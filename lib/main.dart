import 'package:flutter/material.dart';

import 'package:area_51/quiz.dart';
import 'package:area_51/result.dart';

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
  final _questions = const [
    {
      "questionText": "How are you?",
      "answers": [
        {"text": "Zuper", "score": 10},
        {"text": "So-so", "score": 5}
      ],
    },
    {
      "questionText": "Have you visited Area 51 before?",
      "answers": [
        {"text": "Yes", "score": 10},
        {"text": "No", "score": 5},
      ]
    },
    {
      "questionText": "Do you want coffee?",
      "answers": [
        {"text": "Bitte", "score": 10},
        {"text": "Nah", "score": 5},
        {"text": "Tea", "score": -5},
      ]
    },
    {
      "questionText": "Which Painting is G's fave?",
      "answers": [
        {"text": "Stormy looking volcano one", "score": 5},
        {"text": "Girl Turning Away", "score": 5},
        {"text": "Drive home moody in hallway", "score": 10},
        {"text": "T's Creative Cùinne Artwork", "score": -5},
      ]
    },
    {
      "questionText": "Which side of the couch belongs to G",
      "answers": [
        {"text": "Side closest to balcony", "score": 10},
        {"text": "Side beside wall", "score": -10},
      ]
    },
    {
      "questionText":
          "Whats the name of G's frequent ZaraHome giant candle scent?",
      "answers": [
        {"text": "Dark Vanilla", "score": -5},
        {"text": "Black Vanilla", "score": 10},
        {"text": "Dark Romance", "score": -5}
      ]
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    if (_questionIndex < _questions.length) {
      print("We have more questions left");
    } else {
      print("No questions left");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('Welcome to Area 51'),
            ),
            body: (_questionIndex < _questions.length)
                ? Quiz(
                    answerQuestion: _answerQuestion,
                    questions: _questions,
                    questionIndex: _questionIndex)
                : Result(_totalScore, _resetQuiz)));
  }
}
