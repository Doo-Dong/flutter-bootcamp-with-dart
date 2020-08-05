import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red[100],
        appBar: AppBar(
          title: Text('I am rich'),
          backgroundColor: Colors.red[300],
        ),
        body: Center(
          child: Image(
              //image: NetworkImage('https://www.ddanzi.com/files/attach/images/977701/426/933/541/4e7adddc1f5bb4229326d78f6334c08e.jpg'),
              image: AssetImage('Images/rubyRich.png'),
            ),
        ),
      ),
    ));
