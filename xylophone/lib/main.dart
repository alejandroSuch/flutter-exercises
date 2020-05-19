import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  List<Map> notes = [
    {'file': 'note1.wav', 'color': Colors.blue},
    {'file': 'note2.wav', 'color': Colors.teal},
    {'file': 'note3.wav', 'color': Colors.green},
    {'file': 'note4.wav', 'color': Colors.lime},
    {'file': 'note5.wav', 'color': Colors.red},
    {'file': 'note6.wav', 'color': Colors.pink},
    {'file': 'note7.wav', 'color': Colors.orange},
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: this
                  .notes
                  .map((note) => SoundButton(file: note['file'], color: note['color']))
                  .toList(),
            ),
          ),
        ),
      ),
    );
  }
}

class SoundButton extends StatelessWidget {
  String file;
  Color color;

  SoundButton({this.file, this.color});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FlatButton(
        child: null,
        color: this.color,
        onPressed: () => AudioCache().play(this.file),
      ),
    );
  }
}
