import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  static Random random = Random();

  int leftDieNumber = random.nextInt(6) + 1;
  int rightDieNumber = random.nextInt(6) + 1;

  void shake() {
    setState(() {
      leftDieNumber = random.nextInt(6) + 1;
      rightDieNumber = random.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Die(
            number: this.leftDieNumber,
            onPressed: this.shake,
          ),
          Die(
            number: this.rightDieNumber,
            onPressed: this.shake,
          ),
        ],
      ),
    );
  }
}

class Die extends StatelessWidget {
  int number;
  Function onPressed;

  Die({@required this.number, @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FlatButton(
        onPressed: this.onPressed,
        child: Image.asset("images/dice${this.number}.png"),
      ),
    );
  }
}
