import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../const.dart';
import 'roundInputButton.dart';

class WeightSelect extends StatefulWidget {
  @override
  _WeightSelectState createState() => _WeightSelectState();
}

class _WeightSelectState extends State<WeightSelect> {
  int weight = 60;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text('WEIGHT', style: kInactiveFont),
        Text(weight.toString(), style: kSuperWeightFont),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RoundInputButton(
              icon: FontAwesomeIcons.minus,
              onPressed: () {
                setState(() {
                  weight--;
                });
              },
            ),
            SizedBox(
              width: 10.0,
            ),
            RoundInputButton(
              icon: FontAwesomeIcons.plus,
              onPressed: () {
                setState(() {
                  weight++;
                });
              },
            )
          ],
        ),
      ],
    );
  }
}