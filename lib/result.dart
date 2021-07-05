import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function resetQuizCallback;

  Result(this.totalScore, this.resetQuizCallback);

  // getter
  String get resultPhrase {
    return "Quiz is completed with score - $totalScore";
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          TextButton(
            child: Text("Reset the quiz"),
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all(Colors.blue),
            ),
            onPressed: this.resetQuizCallback,
          ),
        ],
      ),
    );
  }
}
