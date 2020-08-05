import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: Dicepage(),
      ),
    ),
  );
}

class Dicepage extends StatefulWidget {
  @override
  _DicepageState createState() => _DicepageState();
}

class _DicepageState extends State<Dicepage> {
  int leftDiceNum = 1;
  int rightDiceNum = 1;

  void refreshDice() {
    rightDiceNum = Random().nextInt(6) + 1;
    leftDiceNum = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Row(
        children: <Widget>[
          Expanded(
              flex: 1,
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    refreshDice();
                  });
                },
                child: Image.asset('images/dice$leftDiceNum.png'),
              )),
          Expanded(
              flex: 1,
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    refreshDice();
                  });
                },
                child: Image.asset('images/dice$rightDiceNum.png'),
              )),
        ],
      ),
    );
  }
}