import 'package:flutter/material.dart';

class BaseCard extends StatelessWidget {
  final Color color;
  final Widget child;
  final Function onTap;

  BaseCard({
    this.child,
    this.color,
    this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.onTap,
      child: Container(
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: this.color,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: child,
      ),
    );
  }
}