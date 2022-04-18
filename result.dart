import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore == 0) {
      resultText =
          'Not even a single one?, you will burn under Modi Ji\'s flames.';
    } else if (resultScore == 1) {
      resultText = 'Only one right, wow, you are a failure';
    } else if (resultScore == 2) {
      resultText = 'Two right?, you are disgracefull';
    } else if (resultScore == 3) {
      resultText = "Three right, that is still a fail";
    } else if (resultScore == 4) {
      resultText = "Four right, that is okay I guess";
    } else if (resultScore == 5) {
      resultText = "You got half of them right, not too bad";
    } else if (resultScore == 6) {
      resultText = "Six correct, that is decent";
    } else if (resultScore == 7) {
      resultText = "You got seven of them, I am kind of proud";
    } else if (resultScore == 8) {
      resultText = "Eight correct!?, that is very good";
    } else if (resultScore == 9) {
      resultText = "You got nine of them, amazing!";
    } else if (resultScore == 10) {
      resultText = "A PERFECT SCORE, MODI JI IS SO PROUD";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          OutlineButton(
            child: Text(
              'Restart Quiz!',
            ),
            textColor: Colors.blue,
            onPressed: resetHandler,
          ),
        ],
      ),
    );
  }
}
