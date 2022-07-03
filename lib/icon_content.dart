import 'package:flutter/material.dart';
import 'constants.dart';


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
          size: kiconSize,
        ),
        SizedBox(
          height: ksizedBoxHeight,
        ),
        Text(
          iconText,
          style: klabelTextStyle,
        )
      ],
    );
  }
}
