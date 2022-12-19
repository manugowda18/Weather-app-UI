import 'package:flutter/material.dart';
import '../constants.dart';

class InfoCard extends StatelessWidget {
  InfoCard({required this.headingText, required this.text});

  final String headingText;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90.0,
      height: 50.0,
      child: Card(
        color: kBackgroundColor,
        child: Column(
          children: [
            Text(
              headingText,
              style: kinfoCardHeadingStyle,
            ),
            Text(
              text,
              style: kinfoCardTextStyle,
            )
          ],
        ),
      ),
    );
  }
}
