import 'package:flutter/foundation.dart';

class Question {
  String _question;
  bool _answer;

  Question(@required String q, @required bool a) {
    this._question = q;
    this._answer = a;
  }

  bool get answer => _answer;

  String get question => _question;
}
