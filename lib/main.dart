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
      'questionText': 'Who is the main character of the anime Pokémon?',
      'answers': [
        {'text': 'Misty', 'score': 0},
        {'text': 'Ash Ketchum', 'score': 1},
        {'text': 'Brock', 'score': 0},
        {'text': 'Professor Samuel Oak', 'score': 0},
      ],
    },
    {
      'questionText': 'In \'Nurato\', the main character, Naruto Uzumaki, is a host for the powerful Nine-Tales. What creature is the Nine-Tails?',
      'answers': [
        {'text': 'Fox', 'score': 1},
        {'text': 'Wolf', 'score': 0},
        {'text': 'Bear', 'score': 0},
        {'text': 'Cat', 'score': 0},
      ],
    },
    {
      'questionText': 'In \'One Piece\', Monkey D. Luffy originally sets out with the Straw Hat Pirates to become the pirate king on which ship?',
      'answers': [
        {'text': 'Jolly Roger', 'score': 0},
        {'text': 'Ever Darker', 'score': 0},
        {'text': 'Going Merry', 'score': 1},
        {'text': 'Thousand Sunny', 'score': 0},
      ],
    },
    {
      'questionText': 'Which planet is also known as the Dragon World in \'Dragon Ball\'?',
      'answers': [
        {'text': 'Mars', 'score': 0},
        {'text': 'Earth', 'score': 1},
        {'text': 'Jupiter', 'score': 0},
        {'text': 'Neptune', 'score': 0},
      ],
    },
    {
      'questionText': 'In the anime Death Note, who was the first successor of L in the Kira investigation?',
      'answers': [
        {'text': 'Light Yagami', 'score': 1},
        {'text': 'Near', 'score': 0},
        {'text': 'Mello', 'score': 0},
        {'text': 'Teru Mikami', 'score': 0},
      ],
    },
  ];
  var questionIndex = 0;
  var totalScore = 0;
  
  void resetQuiz() {
    setState(() {
      questionIndex = 0;
      totalScore = 0;
    });
  }

  void answerQuestion(int score) {
    totalScore += score;
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
            : Result(totalScore,resetQuiz),
      ),
    );
  }
}
