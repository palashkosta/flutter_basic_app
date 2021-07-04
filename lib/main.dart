import 'package:flutter/material.dart';

void main() {
  runApp(BasicApp());
}

class BasicApp extends StatelessWidget {
  var questionIndex = 0;

  void answered1Question() {
    questionIndex = questionIndex + 1;
    print("Answered 1 chosen");
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      "What is your favourite color?",
      "What is your favourite animal"
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("First App"),
        ),
        body: Column(
          children: [
            Text(questions.elementAt(questionIndex)),
            RaisedButton(
              child: Text("Answer 1"),
              onPressed: answered1Question,
            ),
            RaisedButton(
              child: Text("Answer 2"),
              onPressed: () => {print("Asnwered 2 chosen")},
            ),
            RaisedButton(
              child: Text("Answer 3"),
              onPressed: () {
                print("Answered 3 chosen");
              },
            )
          ],
        ),
      ),
    );
  }
}
