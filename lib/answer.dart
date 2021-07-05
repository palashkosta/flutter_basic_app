import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String _answerTextString;

  Answer(this.selectHandler, this._answerTextString);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        child: Text(_answerTextString),
        textColor: Colors.white,
        onPressed: selectHandler,
        color: Colors.blue,
      ),
    );
  }
}
