import 'package:flutter/material.dart';
//import 'package:english_words/english_words.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playsound(int soundnumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$soundnumber.wav'));
  }

  Expanded buildkey({Color color, int soundnumber}) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(backgroundColor: color),
        onPressed: () {
          playsound(soundnumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: Center(
            child: Text('XYLIPHONE APP',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                )),
          ),
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildkey(color: Colors.red, soundnumber: 1),
              buildkey(color: Colors.orange, soundnumber: 2),
              buildkey(color: Colors.yellow, soundnumber: 3),
              buildkey(color: Colors.green, soundnumber: 4),
              buildkey(color: Colors.teal, soundnumber: 5),
              buildkey(color: Colors.blue, soundnumber: 6),
              buildkey(color: Colors.purple, soundnumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
