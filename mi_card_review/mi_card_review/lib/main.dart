import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.pinkAccent[100],
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 70.0,
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage('asset/ca_lip.png'),
                ),
                Text(
                  'Clean Lip',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Pacifico',
                  ),
                ),
                Text(
                  'UV-C Lip Sanitizer',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.5,
                    fontFamily: 'SansPro',
                  ),
                ),
                SizedBox(
                  width: 150.0,
                  child: Divider(
                    color: Colors.pink,
                    thickness: 2.0,
                  ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 30.0),
                  child: FlatButton(
                    splashColor: Colors.pinkAccent,
                    onPressed: (){
                      print('You Clicked Phone Number');
                    },
                    child: ListTile(
                      leading: Icon(
                        Icons.call,
                        color: Colors.pink,
                      ),
                      title: Text(
                        '+82 010-1234-5678',
                        style: TextStyle(
                          color: Colors.pink,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'SansPro',
                        ),
                      ),
                    ),
                  ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 30.0),
                  child: FlatButton(
                    splashColor: Colors.pinkAccent,
                    onPressed: () {
                      print('You Clicked email address');
                    },
                    child: ListTile(
                      leading: Icon(
                        Icons.email,
                        color: Colors.pink,
                      ),
                      title: Text(
                        'ehd6754@gmail.com',
                        style: TextStyle(
                          color: Colors.pink,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'SansPro',
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
