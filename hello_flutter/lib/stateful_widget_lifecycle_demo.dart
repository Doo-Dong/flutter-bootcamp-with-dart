import 'package:flutter/material.dart';

void main() =>
    runApp(MaterialApp(
      title: 'stateful widget lifecycle',
      home: Scaffold(
        appBar: AppBar(title: Text('stateful 위젯 lifecycle 데모')),
        body: _StatefulWidgetDemo(),
      ),
    ));

class _StatefulWidgetDemo extends StatefulWidget {
  @override
  State createState() => _StatefulWidgetDemoState();
}

class _StatefulWidgetDemoState extends State<_StatefulWidgetDemo> {
  @override
  void initState() {

  }

  @override
  void didChangeDependencies() {

  }

  @override
  Widget build(BuildContext context) {
    return Text('이것은 생명주기 위젯인것!');
  }

  @override
  void didUpdateWidget(_StatefulWidgetDemo oldWidget) {

  }

  @override
  void setState(VoidCallback fn) {

  }

  @override
  void deactivate() {

  }

  @override
  void dispose() {

  }
}