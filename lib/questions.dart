import 'package:flutter/material.dart';

class Questions extends StatelessWidget {
  final String questionName;
  Questions(this.questionName);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(20),
      child: Text(
        questionName,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
