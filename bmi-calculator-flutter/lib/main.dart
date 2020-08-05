import 'package:flutter/material.dart';
import 'screen/input_page.dart';
import 'screen/result_page.dart';
import 'const.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: kDefaultDeepBlack,
        scaffoldBackgroundColor: kDefaultDeepBlack,
        sliderTheme: SliderTheme.of(context).copyWith(
            thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12.0),
            overlayColor: kDefaultFuchsiaOpacity,
            thumbColor: kDefaultFuchsia,
            activeTrackColor: kActiveWhite,
            inactiveTrackColor: kInactiveLightGrey
        ),
      ),
      initialRoute: '/',
      routes: {
        '/' : (context) => InputPage(),
        '/result' : (context) => ResultPage(),
      },
    );
  }
}
