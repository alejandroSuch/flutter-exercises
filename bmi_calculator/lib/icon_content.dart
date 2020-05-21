import 'package:flutter/material.dart';

const textStyle = TextStyle(
    fontSize: 18.0,
    color: Color(0xFF8D8E98)
);

class IconContent extends StatelessWidget {
  final IconData icon;
  final String text;

  IconContent({ @required this.icon, this.text,  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          this.icon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          this.text,
          style: textStyle,
        )
      ],
    );
  }
}