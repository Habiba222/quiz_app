import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  Result(this.resultScore);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = "you're amazing and innocent !";
    } else if (resultScore <= 12) {
      resultText = "you're adorable !";
    } else if (resultScore <= 16) {
      resultText = "you can do better!";
    } else {
      resultText = "you're beautiful !";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        resultPhrase,
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
      ),
    );
  }
}
