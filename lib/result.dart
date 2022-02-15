import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback reset;

  Result(this.resultScore, this.reset);

  String get resultPhrase {
    var resultText = 'Casual';
    if (resultScore >= 4) {
      resultText = 'Elitist';
    } else if(resultScore >=1) {
      resultText = 'Weeaboo';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          ElevatedButton(
            onPressed: reset,
            child: Text('Restart Quiz'),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.red),
              foregroundColor: MaterialStateProperty.all(Colors.white70),
            ),
          ),
        ],
      ),
    );
  }
}
