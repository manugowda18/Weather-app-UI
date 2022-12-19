import 'package:flutter/material.dart';
import '../constants.dart';

class ReusableButton extends StatelessWidget {
  final String text;

  ReusableButton({required this.text});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blue,
      child: Container(
        width: 85.0,
        height: 30.0,
        padding: EdgeInsets.all(7.0),
        child: Center(
            child: Text(
          text,
          style: kButtonTextStyle,
        )),
      ),
    );
  }
}
