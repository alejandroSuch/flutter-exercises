import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: EightBallPage(),
      ),
    );

class EightBallPage extends StatefulWidget {
  @override
  _EightBallPageState createState() => _EightBallPageState();
}

class _EightBallPageState extends State<EightBallPage> {
  static Random random = Random();

  int currentBall = random.nextInt(5) + 1;

  void nextBall() {
    setState(() {
      currentBall = random.nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        centerTitle: false,
        title: Text(
          'Ask Me Anything',
        ),
      ),
      body: Container(
        color: Colors.blue,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 24.0,
              right: 25.0,
            ),
            child: FlatButton(
              child: Image.asset("images/ball${this.currentBall}.png"),
              onPressed: this.nextBall,
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
            ),
          ),
        ),
      ),
    );
  }
}
