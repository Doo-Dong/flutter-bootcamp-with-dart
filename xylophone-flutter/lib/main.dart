import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int n) {
    final assetsAudioPlayer = AssetsAudioPlayer();
    assetsAudioPlayer.open(
      Audio("assets/note$n.wav"),
    );
  }

  Widget buildKey({Color color, int note}) {
    return Expanded(
      child: Container(
        color: color,
        child: FlatButton(
          onPressed: () {
            playSound(note);
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                buildKey(color: Colors.red, note: 1),
                buildKey(color: Colors.orange, note: 2),
                buildKey(color: Colors.yellow, note: 3),
                buildKey(color: Colors.green, note: 4),
                buildKey(color: Colors.lightBlueAccent, note: 5),
                buildKey(color: Colors.indigoAccent, note: 6),
                buildKey(color: Colors.deepPurpleAccent, note: 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
