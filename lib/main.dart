import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playMusic(String num) {
    final player = AudioCache();
    player.play('note$num.wav');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                child: FlatButton(
                  color: Colors.red,
                  onPressed: () {
                    playMusic('1');
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.orange,
                  onPressed: () {
                    playMusic('2');
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.yellow,
                  onPressed: () {
                    playMusic('3');
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.green,
                  onPressed: () {
                    playMusic('4');
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.teal,
                  onPressed: () {
                    playMusic('5');
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.blue,
                  onPressed: () {
                    playMusic('6');
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.purple,
                  onPressed: () {
                    playMusic('7');
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
