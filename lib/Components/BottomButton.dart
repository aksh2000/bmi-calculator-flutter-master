import 'package:flutter/material.dart';
import 'constants.dart';

class bottomButton extends StatelessWidget {
  const bottomButton({@required this.label, @required this.onTap});

  final Function onTap;
  final String label;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            label,
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        margin: EdgeInsets.only(top: 10.0),
        color: bottomcontainercolor,
        height: bottomcontainerheight,
        width: double.infinity,
      ),
    );
  }
}
