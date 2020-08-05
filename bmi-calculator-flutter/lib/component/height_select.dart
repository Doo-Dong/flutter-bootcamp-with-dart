import 'package:flutter/material.dart';
import '../const.dart';

class HeightSelect extends StatefulWidget {
  @override
  _HeightSelectState createState() => _HeightSelectState();
}

class _HeightSelectState extends State<HeightSelect> {
  int height = 160;

  int getHeight() {
    return height;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'HEIGHT',
          style: kInactiveFont,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: <Widget>[
            Text(
              height.toString(),
              style: kSuperWeightFont,
            ),
            SizedBox(
              width: 5.0,
            ),
            Text(
              'cm',
              style: kInactiveFont,
            ),
          ],
        ),
        Slider(
          value: height.toDouble(),
          min: 100,
          max: 260,
          onChanged: (value) {
            setState(() {
              height = value.round();
            });
          },
        ),
      ],
    );
  }
}