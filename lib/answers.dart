import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  Answers(this.selectHandler, this.answerName, this.rightAnswer);

  final Function selectHandler;
  final String answerName;
  final String rightAnswer;
  bool correctness() {
    if (this.rightAnswer == this.answerName)
      return true;
    else
      return false;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        textColor: Colors.white,
        child: Text(this.answerName),
        color: Colors.blue,
        onPressed: () => selectHandler(this.correctness()),
      ),
    );
  }
}
