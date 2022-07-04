import 'package:bmi/components/bottom_button.dart';
import 'package:bmi/components/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:bmi/constants.dart';


class ResultPage extends StatelessWidget {

  ResultPage({required this.bmiResult,required this.resultText,required this.interpretation});


  final String bmiResult;
  final String resultText;
  final String interpretation;


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
                children: <Widget> [
                  Text(
                    resultText,
                    style: kresultStyle,
                  ),
                  Text(
                    bmiResult,
                    style: kBMItextStyle,
                  ),
                  Text(
                    interpretation,
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
