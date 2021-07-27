import 'package:flutter/material.dart';
import './Quiz.dart';
import './Result.dart';
import './AllQuestions.dart';

/* If i want to prevent auto rotation */
import 'package:flutter/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  int _score = 0;
  void _answerQuestion(bool correctness) {
    setState(() {
      if (correctness) _score += 10;
      _questionIndex += 1;
    });
  }

  void _reset() {
    setState(() {
      _score = 0;
      _questionIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
            'Hello Quiz',
            style: TextStyle(fontSize: 28.0),
          ),
          centerTitle: true,
        ),
        body: _questionIndex < All().questions.length
            ? Quiz(
                answerQuestions: _answerQuestion,
                questions: All().questions,
                quizIndex: _questionIndex,
              )
            : Result(_score, All().questions.length, _reset),
      ),
    );
  }
}
