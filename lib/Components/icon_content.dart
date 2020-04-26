import 'package:flutter/material.dart';
import 'constants.dart';

class IconColumn extends StatelessWidget {
  IconColumn({this.icon, this.text});

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: iconsize,
        ),
        SizedBox(height: sizedbox),
        Text(
          text,
          style: TextStyle(
            fontSize: textsize,
            color: textcolor,
          ),
        ),
      ],
    );
  }
}
