import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: 'I am Poor',
      home: Scaffold(
        appBar: AppBar(
          title: Text('I am Poor !'),
          backgroundColor: Colors.purple[300],
        ),
        body: Container(
          color: Colors.purple[50],
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image(
                  image: AssetImage('asset/coal-96.png'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('I Have Just One Coal',
                      style: TextStyle(fontSize: 30.0, color: Colors.purple[300]),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    ));
