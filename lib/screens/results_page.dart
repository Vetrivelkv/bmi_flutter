import 'package:bmi/components/bottom_button.dart';
import 'package:bmi/screens//input_page.dart';
import 'package:bmi/components/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:bmi/constants.dart';
import 'package:bmi/screens/results_page.dart';

class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: ktitleTextStyle,
              ),
            ),
          ),
          Expanded(
            child: Reusable_Card(
              colour: kactiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text(
                    'Normal',
                    style: kresultStyle,
                  ),
                  Text(
                    '18.3',
                    style: kBMItextStyle,
                  ),
                  Text(
                    'Your BMI is low, you should eat quite a lot',
                    textAlign: TextAlign.center,
                    style: kbodyTextStyle,
                  )
                ],
              ),
            ),
            flex: 5,
          ),
          BottomButton(onTap: (){
            Navigator.pop(context);
          },buttonTitle: 'RE-CALCULATE',)
        ],
      ),
    );
  }
}
