import 'package:flutter/material.dart';

const labelTextStyle = TextStyle(fontSize: 18.0, color: Color(0xFF8D8E98));
const iconSize = 80.0;
const sizedBoxHeight = 15.0;

class IconContent extends StatelessWidget {
  const IconContent({required this.iconName, required this.iconText});
  final String iconText;
  final IconData iconName;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          iconName,
          size: iconSize,
        ),
        SizedBox(
          height: sizedBoxHeight,
        ),
        Text(
          iconText,
          style: labelTextStyle,
        )
      ],
    );
  }
}
