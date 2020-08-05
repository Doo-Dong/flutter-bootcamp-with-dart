import 'package:flutter/material.dart';
import '../const.dart';

class ReUseableCard extends StatelessWidget {
  final Color color;
  final Widget cardChild;
  final Function function;

  ReUseableCard({@required this.color, this.cardChild, this.function});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: Container(
        margin: EdgeInsets.all(kDefaultEdgeInsets),
        padding: EdgeInsets.all(kDefaultEdgeInsets),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(kDefaultCardBorderRadius),
        ),
        child: cardChild,
      ),
    );
  }
}