import 'package:flutter/material.dart';

void main() => runApp(myStatelessWidget());

class myStatelessWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'myStatelessWidget',
      theme: ThemeData(
        brightness: Brightness.light
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('myStatelessWidget'),
        ),
        body: Center(
          child: MyStateless(),
        ),
      ),
    );
  }
}

class MyStateless extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text('야호 ㅎㅎ');
  }
}