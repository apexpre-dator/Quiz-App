import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  final questions = const [
    {
      'questionText': 'What\'s your favorite anime?',
      'answers': ['Demon Slayer', 'One Punch Man', 'Attack on Titan'],
    },
    {
      'questionText': 'How many seasons have you watched?',
      'answers': ['1', '2', '3', '4'],
    },
    {
      'questionText': 'How many stars will you rate it?',
      'answers': ['1', '2', '3', '4', '5'],
    },
  ];
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('App1'),
        ),
        body: questionIndex < questions.length
            ? Quiz(
                answerQuestion: answerQuestion,
                questionIndex: questionIndex,
                questions: questions,
              )
            : Result(),
      ),
    );
  }
}
