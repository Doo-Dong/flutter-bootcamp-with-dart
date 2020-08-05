import 'package:flutter/material.dart';

void main() => runApp(MyApp());

//make by 'STLESS'
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'doodong\'s mi card',
        home: Scaffold(
          backgroundColor: Colors.lightGreen[700],
          body: Container(
            //margin: EdgeInsets.fromLTRB(100.0, 0, 100.0, 0),
            child: SafeArea(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircleAvatar(
                      radius: 50.0,
                      backgroundImage: AssetImage('asset/doodong_pic.jpg'),
                    ),
                    Text(
                      'Doo Dong',
                      style: TextStyle(
                        fontSize: 40.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Pacifico',
                      ),
                    ),
                    Text(
                      'DEVELOPER',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'SourceSansPro',
                        letterSpacing: 2.5,
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                      width: 170.0,
                      child: Divider(
                        color: Colors.lightGreen[500],
                      ),
                    ),
                    Card(
                      margin: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 35.0),
                      color: Colors.white,
                      child: Padding(
                        padding: EdgeInsets.all(10.0),
                        child: ListTile(
                          leading: Icon(
                            Icons.add_call,
                            color: Colors.lightGreen[700],
                          ),
                          title: Text(
                            '+82 010-1234-5678',
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.lightGreen[700],
                              fontWeight: FontWeight.bold,
                              fontFamily: 'SourceSansPro',
                              //letterSpacing: 2.5,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Card(
                      margin: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 35.0),
                      color: Colors.white,
                      child: Padding(
                        padding: EdgeInsets.all(10.0),
                        child: ListTile(
                            leading: Icon(
                              Icons.email,
                              color: Colors.lightGreen[700],
                            ),
                            title: Text(
                              'ehd6754@gmail.com',
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.lightGreen[700],
                                fontWeight: FontWeight.bold,
                                fontFamily: 'SourceSansPro',
                                //letterSpacing: 2.5,
                              ),
                            )),
                      ),
                    ),
                  ]),
            ),
          ),
        ));
  }
}
