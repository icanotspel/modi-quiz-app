import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';
// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What is Modi Ji\s birth year',
      'answers': [
        {'text': '1950', 'score': 0},
        {'text': '1947', 'score': 0},
        {'text': '1963', 'score': 0},
        {'text': '1958', 'score': 0}
      ],
    },
    {
      'questionText': 'What is Modi Ji\'s current political position',
      'answers': [
        {'text': 'Chief Minister', 'score': 0},
        {'text': 'President', 'score': 0},
        {'text': 'Prime Minister', 'score': 0},
        {'text': 'Retired', 'score': 0}
      ],
    },
    {
      'questionText': 'What car does Modi Ji drive',
      'answers': [
        {'text': 'Tata', 'score': 0},
        {'text': 'Mercedes', 'score': 0},
        {'text': 'Land Rover', 'score': 0},
        {'text': 'Subaru', 'score': 0}
      ],
    },
    {
      'questionText': 'What did Modi want to when he was young?',
      'answers': [
        {'text': 'Politics', 'score': 0},
        {'text': 'Medical', 'score': 0},
        {'text': 'Buisness', 'score': 0},
        {'text': 'Army', 'score': 0}
      ],
    },
    {
      'questionText': 'What number Prime Minister is Modi Ji?',
      'answers': [
        {'text': '12', 'score': 0},
        {'text': '14', 'score': 0},
        {'text': '9', 'score': 0},
        {'text': '17', 'score': 0}
      ],
    },
    {
      'questionText': 'What is Modi Ji\s political party',
      'answers': [
        {'text': 'Communist', 'score': 0},
        {'text': 'INC', 'score': 0},
        {'text': 'BJP', 'score': 0},
        {'text': 'NPP', 'score': 0}
      ],
    },
    {
      'questionText': 'Who did Modi Ji endorse in Uttar Pradesh election',
      'answers': [
        {'text': 'Yogi Adiyanath', 'score': 0},
        {'text': 'Priyanka Ghandi', 'score': 0},
        {'text': 'Akilesh Yadev', 'score': 0},
        {'text': 'Mayawati', 'score': 0}
      ],
    },
    {
      'questionText': 'Where was Modi Ji born?',
      'answers': [
        {'text': 'Dehli', 'score': 0},
        {'text': 'Mumbai', 'score': 0},
        {'text': 'Hyderabad', 'score': 0},
        {'text': 'Gujurat', 'score': 0}
      ],
    },
    {
      'questionText': 'Was Modi Ji ever TIMES Person of the Year',
      'answers': [
        {'text': 'Yes', 'score': 0},
        {'text': 'No', 'score': 0},
      ],
    },
    {
      'questionText':
          'What rank is Modi Ji in followers on Twitter for politics',
      'answers': [
        {'text': '1', 'score': 0},
        {'text': '2', 'score': 0},
        {'text': '3', 'score': 0},
        {'text': '4', 'score': 0}
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    // var aBool = true;
    // aBool = false;

    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    print(score);
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    // var dummy = const ['Hello'];
    // dummy.add('Max');
    // print(dummy);
    // dummy = [];
    // questions = []; // does not work if questions is a const

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'Modi Ji quiz',
              textAlign: TextAlign.center,
            ),
          ),
          backgroundColor: Colors.red,
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
