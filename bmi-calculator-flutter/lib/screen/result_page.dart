import 'dart:ui';

import 'package:flutter/material.dart';
import '../component/reuseable_card.dart';
import '../component/calculateButton.dart';
import 'input_page.dart';
import '../const.dart';

class ResultPage extends StatefulWidget {
  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    final PassArgs args = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: SafeArea(
        child: Column(children: <Widget>[
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 20.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                textBaseline: TextBaseline.alphabetic,
                children: <Widget>[
                  Text(
                    'Your Result',
                    style: kSuperWeightFont,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ReUseableCard(
                      color: kDefaultBlack,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text(
                            args.explains[0],
                            style: kResultGreenFont,
                          ),
                          Text(
                            args.bmi,
                            style: kSuperResultWeightFont,
                          ),
                          Text(
                            args.explains[1],
                            style: kResultWhiteFont,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.only(top: kDefaultEdgeInsets),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: CalculateButton(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      buttonString: 'RE-CALCULATE YOUR BMI',
                    ),
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
