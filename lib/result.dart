import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback reset_quiz;

  Result(this.resultScore, this.reset_quiz);

  String get resultPhrase {
    var resultText = "You did it! ♥️";
    if (resultScore < 60) {
      resultText = "Hmm... try better next time. Your score out of 60:  ";
      resultText += resultScore.toString();
    } else {
      resultText += "Maximum Score:";
      resultText += resultScore.toString();
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(resultPhrase,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
        ),
        TextButton(
            onPressed: reset_quiz,
            child: Text("Restart Quiz",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)))
      ],
    );
  }
}
