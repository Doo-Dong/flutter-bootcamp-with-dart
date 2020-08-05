import 'package:flutter/material.dart';
import 'quiz_brain.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

_onBasicAlertPressed(context, int score) {
  Alert(
      context: context,
      title: "퀴즈 끝!",
      desc: "수고하셨습니다.\n 점수 : $score")
      .show();
}

void main() => runApp(Quizzler());

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
  List<Icon> ScoreKeeper = [];
  int score = 0;

  quizBrain QuizBrain = quizBrain();

  void lastQuiz() {
    _onBasicAlertPressed(context, score);
    ScoreKeeper = [];
    score = 0;
    QuizBrain.setQuizIndex(0);
  }

  void checkScore(bool userCheck) {
    if (QuizBrain.getAnswer() == userCheck) {
      ScoreKeeper.add(
        Icon(
          Icons.check,
          color: Colors.green,
        ),
      );
      score++;
      if(QuizBrain.getQuizIndex() >= QuizBrain.getQuizLastNum() ) {
        lastQuiz();
      } else {
        QuizBrain.nextQuiz();
      }
    } else {
      ScoreKeeper.add(
        Icon(
          Icons.close,
          color: Colors.red,
        ),
      );
      if(QuizBrain.getQuizIndex() >= QuizBrain.getQuizLastNum() ) {
        lastQuiz();
      } else {
        QuizBrain.nextQuiz();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Center(
            child: Text(
              (QuizBrain.getQuizIndex() + 1).toString() + '번 문제',
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                QuizBrain.getQuiz(),
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
                //The user picked true.
                setState(() {
                  checkScore(true);
                });
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
                //The user picked true.
                setState(() {
                  checkScore(false);
                });
              },
            ),
          ),
        ),
        //TODO: Add a Row here as your score keeper
        Row(
          children: ScoreKeeper,
        ),
      ],
    );
  }
}
