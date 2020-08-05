import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(BallPage());

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('뭐든 물어봐!'),
        ),
        backgroundColor: Colors.blue[100],
        body: Ball(),
      ),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;

  void randomBallNumber() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
    print('RUN : randomBallNumber');
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        highlightColor: Colors.blue,
        splashColor: Colors.blue,
        onPressed: () {
          randomBallNumber();
        },
        child: Container(
          child: Image.asset('images/ball$ballNumber.png'),
        ),
      ),
    );
  }
}
