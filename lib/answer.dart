import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;

  Answer(this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: ElevatedButton(
          style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(Colors.blue)),
          child: Text("Answer 1",
              style: TextStyle(
                color: Colors.pinkAccent,
              )),
          onPressed: selectHandler,
        ));
  }
}
