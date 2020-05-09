import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playMusic(String num) {
    final player = AudioCache();
    player.play('note$num.wav');
  }

  Expanded buildKey(String num, Color col) {
    return Expanded(
      child: FlatButton(
        color: col,
        onPressed: () {
          playMusic(num);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey('1', Colors.red),
              buildKey('2', Colors.orange),
              buildKey('3', Colors.yellow),
              buildKey('4', Colors.green),
              buildKey('5', Colors.teal),
              buildKey('6', Colors.blue),
              buildKey('7', Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
