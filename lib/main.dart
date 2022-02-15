import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

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
            ? Column(
                children: [
                  Question(
                    questions[questionIndex]['questionText'] as String,
                  ),
                  ...(questions[questionIndex]['answers'] as List<String>)
                      .map((answer) {
                    return Answer(answerQuestion, answer);
                  }).toList()
                ],
              )
            : Center(
                child: Text(
                  'Thanks for your feedback!',
                ),
              ),
      ),
    );
  }
}
