import 'package:flutter/material.dart';
import 'package:bmi/screens/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InputPage(),
      theme: ThemeData.dark().copyWith(
        colorScheme: ColorScheme.light(primary: Color(0x0FF0A0E21)),
        scaffoldBackgroundColor: Color(0x0FF0A0E21)
      ),
    );
  }
}

