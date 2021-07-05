import 'package:basic_app/quiz.dart';
import 'package:basic_app/result.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(BasicApp());
}

class BasicApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _BasicAppState();
  }
}

class _BasicAppState extends State<BasicApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  void _answered1Question(int score) {
    _totalScore = _totalScore + score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    // const - known at compile time
    const questions = [
      {
        "questionText": "What is your favourite color?",
        "answers": ["Black", "Blue", "Purple", "White"]
      },
      {
        "questionText": "What is your favourite animal",
        "answers": ["Rabbit", "Snake", "Elephant", "Lion"]
      },
      {
        "questionText": "What is your favourite mobile dev platform",
        "answers": ["Android", "Flutter", "iOS", "React Native"]
      }
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("First App"),
        ),
        body: _questionIndex < questions.length
            ? Quiz(
                answerQuestion: _answered1Question,
                questionIndex: _questionIndex,
                questions: questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
