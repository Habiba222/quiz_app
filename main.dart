import 'package:flutter/material.dart';
import 'result.dart';
import 'quiz.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final List<Map<String, dynamic>> _questions = const [
    {
      'questionText': 'what is your favourite color?',
      'answer': [
        {'text': 'Black', 'score': '10'},
        {'text': 'Red', 'score': '5'},
        {'text': 'Green', 'score': '3'},
        {'text': 'white', 'score': '1'}
      ],
    },
    {
      'questionText': 'what is your favourite Animal?',
      'answer': [
        {'text': 'Cats', 'score': '3'},
        {'text': 'Dogs', 'score': '11'},
        {'text': 'Snakes', 'score': '5'},
        {'text': 'Loins', 'score': '9'}
      ],
    },
    {
      'questionText': 'what is your favourite person',
      'answer': [
        {'text': 'Habiba', 'score': '0'},
        {'text': 'Habiba', 'score': '0'},
        {'text': 'Habiba', 'score': '0'},
        {'text': 'Habiba', 'score': '0'},
      ],
    }
  ];
  var _questionIndex = 0;
  var _totalscore = 0;

  void _answerQuestion(int score) {
    _totalscore = _totalscore + score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print("we have more questions !");
    } else {
      print("no more questions");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My first app"),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalscore),
      ),
    );
  }
}

