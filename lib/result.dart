import "package:flutter/material.dart";
import 'constants.dart';
import 'reusable_card.dart';
import 'button.dart';

class result extends StatelessWidget {
  result(@required this.bmiResult, @required this.Resulttext,
      @required this.Interpreration);

  final String bmiResult;
  final String Resulttext;
  final String Interpreration;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                child: Container(
                    padding: EdgeInsets.all(15.0),
                    alignment: Alignment.bottomLeft,
                    child: Center(
                      child: Text(
                        'Your Result',
                        style: labelTextStyle4,
                      ),
                    ))),
            Expanded(
                flex: 5,
                child: Reusable_Card(
                  colour: mycolors,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        Resulttext,
                        style: labelTextStyle5,
                      ),
                      Text(
                        bmiResult,
                        style: labelTextStyle6,
                      ),
                      Text(
                        Interpreration,
                        style: labelTextStyle7,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                )),
            bottomB(
                ontap: () {
                  Navigator.pop(context);
                },
                buttonTitle: 'RE-CALCULATE')
          ],
        ));
  }
}
