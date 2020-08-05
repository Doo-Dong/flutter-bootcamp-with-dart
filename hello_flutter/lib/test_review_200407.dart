import 'package:flutter/material.dart';

void main() => runApp(myApp());

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'test_review_200407',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.deepPurpleAccent,
        accentColor: Colors.amberAccent,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: Scaffold(
        body: Center(
          child: Text(
            '''
            텍스트 테스트
            
            아나 빨리 잘하고 싶다고 ㅠㅠ
            ''',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.deepPurpleAccent
            ),
          ),
        )
      ),
    );
  }
}