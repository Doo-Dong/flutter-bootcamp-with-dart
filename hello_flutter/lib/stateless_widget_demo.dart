import 'package:flutter/material.dart';

void main() =>
    runApp(MaterialApp(
      title: 'stateless Widget Demo',
      home: Scaffold(
        appBar: AppBar(title: Text('Stateless 위젯 데모')),
        body: _FirstStatelessDemo(),
      ),
    ));

class _FirstStatelessDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text('이것은 stateless 위젯입니다.');
  }
}