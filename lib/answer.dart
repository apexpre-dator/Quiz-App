import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback answerAnime;
  final String answerText;
  Answer(this.answerAnime,this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.red),
          foregroundColor: MaterialStateProperty.all(Colors.white70),
        ),
        onPressed: answerAnime,
        child: Text(answerText),
      ),
    );
  }
}
