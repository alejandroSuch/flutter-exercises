import 'package:flutter/material.dart';
import 'package:quizzler/question_bank.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

void main() => runApp(Quizzler());

QuestionBank questionBank = QuestionBank();

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int _questionNumber = 0;
  List<bool> _scoreKeeper = [];

  void answer(bool userAnswer) {
    bool score = false;
    if (userAnswer == questionBank.question(_questionNumber).answer) {
      score = true;
    }

    setState(() {
      _scoreKeeper.add(score);

      if (_questionNumber < questionBank.totalQuestions - 1) {
        _questionNumber++;
      } else {
        _questionNumber = 0;
        int score = _scoreKeeper.fold<int>(
          0,
          (int previousValue, bool element) {
            if (element == true) {
              return previousValue + 1;
            }

            return previousValue;
          },
        );
        _scoreKeeper = [];
        
        Alert(
          context: context,
          title: "Game Over",
          desc: "Your score: $score",
        ).show();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                questionBank.question(_questionNumber).question,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.green,
              child: Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                answer(true);
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              color: Colors.red,
              child: Text(
                'False',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                answer(false);
              },
            ),
          ),
        ),
        Row(
          children: _scoreKeeper
              .map(
                (score) => Icon(
                  score ? Icons.check : Icons.close,
                  color: score ? Colors.green : Colors.red,
                ),
              )
              .toList(),
        )
      ],
    );
  }
}
