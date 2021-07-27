import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  Result(this.score, this.result, this.reset);
  final int score;
  final int result;
  final Function reset;
  Color getColor() {
    if (score < (result * 10) / 2) {
      return Colors.red[500];
    } else if (score == (result * 10) / 2) {
      return Colors.blue[500];
    } else if (score == result * 10) {
      return Colors.amber[600];
    } else {
      return Colors.teal[500];
    }
  }

  String getText() {
    if (score < (result * 10) / 2) {
      return 'You are loser, Study and try again! ';
    } else if (score == (result * 10) / 2) {
      return 'You have passed, But you have to study well';
    } else if (score == result * 10) {
      return 'Congratulations, You are Perfect';
    } else {
      return 'Congratulation, You have passed the exam well';
    }
  }

  String getName() {
    if (score < (result * 10) / 2) {
      return 'Week!';
    } else if (score == (result * 10) / 2) {
      return 'Medium!';
    } else if (score == result * 10) {
      return "Perfect!";
    } else {
      return 'Good!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.only(left: 10, right: 10, top: 20),
        height: 500,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(color: Colors.black26, width: 3),
          boxShadow: [
            BoxShadow(
                color: Colors.grey[600].withOpacity(0.8),
                spreadRadius: 1,
                blurRadius: 2,
                offset: Offset(2, 3)
                // changes position of shadow
                ),
          ],
        ),
        padding: EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              getName(),
              style: TextStyle(
                  letterSpacing: 3.0,
                  fontWeight: FontWeight.bold,
                  fontSize: 90.0,
                  color: getColor()),
              textAlign: TextAlign.center,
            ),
            Text(
              '$score from ${result * 10}',
              style: TextStyle(
                  fontSize: 38.0,
                  color: Colors.black45,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            Text(
              getText(),
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 38.0,
                  color: getColor()),
              textAlign: TextAlign.center,
            ),
            Container(
              width: double.infinity,
              height: 50,
              color: Colors.teal,
              child: FlatButton(
                color: Colors.blue,
                disabledColor: Colors.purple,
                onPressed: reset,
                child: Text(
                  'Restart Quiz',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
