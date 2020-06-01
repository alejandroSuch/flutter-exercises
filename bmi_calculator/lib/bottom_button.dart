import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  final String text;
  final Function onPressed;

  BottomButton({@required this.text, @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.onPressed,
      child: Container(
        color: kBottomContainerColor,
        height: kBottomContainerHeight,
        child: Center(
          child: Text(
            this.text,
            style: TextStyle(fontSize: kLabelSize, fontWeight: FontWeight.w700),
          ),
        ),
      ),
    );
  }
}