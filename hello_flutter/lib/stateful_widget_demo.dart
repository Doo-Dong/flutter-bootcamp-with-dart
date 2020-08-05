import 'package:flutter/material.dart';

void main() =>
    runApp(MaterialApp(
      title: 'Stateful widget',
      home: Scaffold(
        appBar: AppBar(title : Text('Stateful 위젯 데모')),
        body: _FirstStatefulWidget(),
      ),
    ));

class _FirstStatefulWidget extends StatefulWidget {
  @override
  State createState() => _FirstStatefulWidgetState();
}

class _FirstStatefulWidgetState extends State<_FirstStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Text('이것은 Stateful 위젯입니다.');
  }
}