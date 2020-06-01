import 'dart:math';

import 'package:flutter/cupertino.dart';

class CalculatorBrain {
  double height;
  double weight;

  double _bmi;

  CalculatorBrain({@required this.height, @required this.weight}) {
    _bmi = weight / pow(height / 100, 2);
  }

  String bmi() {
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi > 25) {
      return 'Overweight';
    }

    if (_bmi > 18.5) {
      return 'Normal';
    }

    return 'Underweight';
  }

  String getInterpretation() {
    if (_bmi > 25) {
      return 'Please do more exercise';
    }

    if (_bmi > 18.5) {
      return 'Good for you';
    }

    return 'Eat more';
  }
}
