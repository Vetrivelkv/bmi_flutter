import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

const bottomContianerHeight = 60.0;
const activeCardColor = Color(0XFF1D1E33);
const inactiveCardColor = Color(0XFF111328);
const bottomContainerColor = Color(0xFFEB1555);

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = inactiveCardColor;
  Color femaleCardColor = inactiveCardColor;

  void updateColor(Gender genderDetector) {
    if (genderDetector == Gender.male) {
      if (maleCardColor == inactiveCardColor) {
        maleCardColor = activeCardColor;
        femaleCardColor = inactiveCardColor;
      } else {
        maleCardColor = inactiveCardColor;
      }
    } else {
      if (femaleCardColor == inactiveCardColor) {
        femaleCardColor = activeCardColor;
        maleCardColor = inactiveCardColor;
      } else {
        femaleCardColor = inactiveCardColor;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('BMI CALCULATOR'),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(Gender.male);
                      });
                    },
                    child: Reusable_Card(
                      colour: maleCardColor,
                      cardChild: IconContent(
                          iconName: FontAwesomeIcons.mars, iconText: 'Male'),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(Gender.female);
                      });
                    },
                    child: Reusable_Card(
                      colour: femaleCardColor,
                      cardChild: IconContent(
                          iconName: FontAwesomeIcons.venus, iconText: 'Female'),
                    ),
                  ),
                ),
              ],
            )),
            Expanded(
              child: Reusable_Card(
                colour: activeCardColor,
                cardChild: Row(),
              ),
            ),
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                  child: Reusable_Card(
                    colour: activeCardColor,
                    cardChild: Column(),
                  ),
                ),
                Expanded(
                  child: Reusable_Card(
                    colour: activeCardColor,
                    cardChild: Column(),
                  ),
                ),
              ],
            )),
            Container(
              color: bottomContainerColor,
              margin: const EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: bottomContianerHeight,
            )
          ],
        ));
  }
}
