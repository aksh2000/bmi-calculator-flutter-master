import 'package:bmi_calculator/Components/constants.dart';
import 'package:bmi_calculator/Components/reusable_card.dart';
import 'package:flutter/material.dart';
import '../Components/BottomButton.dart';
import 'package:bmi_calculator/calculatorBrain.dart';

class Results extends StatelessWidget {
  Results(
      {@required this.Interpretation,
      @required this.BMIresult,
      @required this.BMItext});
  final String BMIresult;
  final String BMItext;
  final String Interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
                child: Container(
              padding: EdgeInsets.all(15),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: ktitletext,
              ),
            )),
            Expanded(
                flex: 5,
                child: ReusableCard(
                  colour: activecardcolor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        BMItext.toUpperCase(),
                        style: kresult,
                      ),
                      Text(
                        BMIresult,
                        style: kBMItext,
                      ),
                      Text(
                        Interpretation,
                        textAlign: TextAlign.center,
                        style: kbodyText,
                      ),
                    ],
                  ),
                )),
            bottomButton(
                label: 'RE-CALCULTE',
                onTap: () {
                  Navigator.pop(context);
                })
          ],
        ));
  }
}
