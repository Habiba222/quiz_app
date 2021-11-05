import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final selectHandler;
  final answerText;
  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey,
      width: double.infinity,
      child: RaisedButton(
        textColor: Colors.white,
        child: Text(answerText),
        onPressed: selectHandler,
      ),
    );
  }
}

