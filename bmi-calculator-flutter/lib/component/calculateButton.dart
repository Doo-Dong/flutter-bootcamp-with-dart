import 'package:flutter/material.dart';
import '../const.dart';

class CalculateButton extends StatelessWidget {
  CalculateButton({@required this.onTap, @required this.buttonString});

  final Function onTap;
  final String buttonString;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: kDefaultFuchsia,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              buttonString,
              style: TextStyle(
                color: kActiveWhite,
                fontSize: 20.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}