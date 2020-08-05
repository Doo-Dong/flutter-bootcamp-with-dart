import 'package:flutter/material.dart';
import '../const.dart';

class GenderSelect extends StatelessWidget {
  final String gender;
  final IconData genderIcon;
  final Color genderIconColor;

  GenderSelect({this.gender, this.genderIcon, this.genderIconColor});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          genderIcon,
          size: kIconSize,
          color: genderIconColor,
        ),
        SizedBox(
          height: kSizedBoxHeight,
        ),
        Text(
          gender,
          style: TextStyle(
            color: genderIconColor,
          ),
        ),
      ],
    );
  }
}
