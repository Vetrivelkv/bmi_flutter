import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                  child: Reusable_Card(colour: Color(0XFF1D1E33)),
                ),
                Expanded(
                  child: Reusable_Card(colour: Color(0XFF1D1E33)),
                ),
              ],
            )),
            Expanded(
              child: Reusable_Card(colour: Color(0XFF1D1E33)),
            ),
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                  child: Reusable_Card(colour: Color(0XFF1D1E33)),
                ),
                Expanded(
                  child: Reusable_Card(colour: Color(0XFF1D1E33)),
                ),
              ],
            )),
          ],
        ));
  }
}

class Reusable_Card extends StatelessWidget {
  Reusable_Card({required this.colour});

  final Color colour;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: colour,
      ),
    );
  }
}