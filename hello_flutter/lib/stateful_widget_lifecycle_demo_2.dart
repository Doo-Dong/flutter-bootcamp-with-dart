import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  title: 'stateful_lifecycle_demo',
  home: Scaffold(
    appBar: AppBar(title: Text('Stateful 생명주기 위젯 데모')),
    body: _StatefulWidgetDemo(),
  ),
));

class _StatefulWidgetDemo extends StatefulWidget {
  State createState() => _StatefulWidgetDemoState();
}

class _StatefulWidgetDemoState extends State<_StatefulWidgetDemo> {
  String _btnState;

  @override
  void initState() {
    super.initState();
    print('initState() : 기본값을 설정합니다.');
    _btnState = 'OFF';
  }

  @override
  void didChangeDependencies() {
    print('didChangeDependencies() 호출됨');
  }

  @override
  Widget build(BuildContext context) {
    print('build 호출됨');
    return Column(
      children: <Widget>[
        RaisedButton(
          child: Text('버튼을 누르세요'),
          onPressed: _onClick,
        ), Row(
          children: <Widget>[
            Text('버튼 상태 : '),
            Text(_btnState),
          ],
        )
      ],
    );
  }

  void _onClick() {
    print('_onClick 호출됨');
    setState(() {
        print('setState 호출됨');
        if (_btnState == 'OFF') {
          _btnState = 'ON';
        }else {
          _btnState = 'OFF';
        }}
        );
  }

  @override
  void didUpdateWidget(_StatefulWidgetDemo oldWidget) {
    print('didUpdateWidget 호출됨');
  }

  @override
  void deactivate() {
    print('deactivate 호출됨');
  }

  @override
  void dispose() {
    print('dispose 호출됨');
  }


}