import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  title: 'makeStatefulWidget!',
  theme: ThemeData(
    brightness: Brightness.light
  ),
  darkTheme: ThemeData(
    brightness: Brightness.dark
  ),
  home: Scaffold(
    appBar: AppBar(
      title: Text('makeStatefulWidget!'),
      ),
    body: _myStatefulWidget()
    ),
  ));

class _myStatefulWidget extends StatefulWidget {
  @override
  State createState() => _myStatefulWidgetState();
}

class _myStatefulWidgetState extends State<_myStatefulWidget> {
  String str_Data;

  @override
  void initState() {
    str_Data='안눌림';
    print('initState : 실행');
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    print('build : 실행');
    return Column(
      children: <Widget>[
        RaisedButton(
            child: Text('눌러보쇼'),
            onPressed: _onClick),
        //여기다 넣어야 되는거였음?
        Row(
          children: <Widget>[
            Text(str_Data)
          ],
        )
      ],
    );
  }

  void _onClick() {
    setState(() {
      if (str_Data == '안눌림') {
        str_Data = '눌림';
      }
      else {
        str_Data = '안눌림';
      }
    });
  }
}