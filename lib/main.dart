import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              playButton(color: Colors.red, soundNo: 1),
              playButton(color: Colors.orange, soundNo: 2),
              playButton(color: Colors.yellow, soundNo: 3),
              playButton(color: Colors.green, soundNo: 4),
              playButton(color: Colors.green[800], soundNo: 5),
              playButton(color: Colors.blue, soundNo: 6),
              playButton(color: Colors.purple, soundNo: 7),
            ],
          ),
        ),
      ),
    );
  }

  void playSound(int soundNo) {
    final player = AudioCache();
    player.play("note$soundNo.wav");
  }

  Widget playButton({Color color, int soundNo}) {
    return Expanded(
      child: Container(
        height: double.infinity,
        child: FlatButton(
          onPressed: () {
            playSound(soundNo);
          },
          color: color,
          //child: Text("Click Me"),
        ),
      ),
    );
  }
}
