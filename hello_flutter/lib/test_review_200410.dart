import 'package:flutter/material.dart';

void main() => runApp(MainApp());

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'stateless_review',
      theme: ThemeData(
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('stateless_review'),
        ),
        body: Center(
          child: stateless_review()
        )),
    );
  }
}

class stateless_review extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text('이제 센터 스테이트리스 위젯이냐?');
  }
}