import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../const.dart';
import 'roundInputButton.dart';

class AgeSelect extends StatefulWidget {
  @override
  _AgeSelectState createState() => _AgeSelectState();
}

class _AgeSelectState extends State<AgeSelect> {
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text('AGE', style: kInactiveFont),
        Text(age.toString(), style: kSuperWeightFont),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RoundInputButton(
              icon: FontAwesomeIcons.minus,
              onPressed: () {
                setState(() {
                  age--;
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
                  age++;
                });
              },
            )
          ],
        ),
      ],
    );
  }
}