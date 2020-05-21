import 'package:flutter/material.dart';

class BaseCard extends StatelessWidget {
  final Color color;
  final Widget child;

  BaseCard({
    @required this.child,
    @required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: this.color,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: child,
    );
  }
}