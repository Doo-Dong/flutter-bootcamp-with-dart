import 'package:flutter/material.dart';
import '../const.dart';

class RoundInputButton extends StatefulWidget {
  RoundInputButton({this.icon, this.onPressed});

  final IconData icon;
  final Function onPressed;

  @override
  _RoundInputButtonState createState() => _RoundInputButtonState(icon: icon, onPressed: onPressed);
}

class _RoundInputButtonState extends State<RoundInputButton> {
  _RoundInputButtonState({this.icon, this.onPressed});

  final IconData icon;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      child: Icon(
        icon,
      ),
      elevation: 6.0,
      shape: CircleBorder(),
      fillColor: kInactiveLightGrey,
      constraints: BoxConstraints.tightFor(width: 56.0, height: 56.0),
    );
  }
}