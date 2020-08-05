import '../component/age_select.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../component/reuseable_card.dart';
import '../component/gender_select.dart';
import '../component/roundInputButton.dart';
import '../component/calculateButton.dart';
import '../component/bmiBrain.dart';
import '../const.dart';

//enum
enum gender { male, female }

class PassArgs {
  PassArgs(this.bmi, this.explains);

  final String bmi;
  final List<String> explains;
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  gender genderData;

  int height = 160;
  int weight = 60;

  BmiBrain bmiBrain = BmiBrain();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: SafeArea(
        child: Column(children: <Widget>[
          Expanded(
            flex: 2,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReUseableCard(
                    color: kDefaultBlack,
                    cardChild: GenderSelect(
                      gender: 'MALE',
                      genderIcon: FontAwesomeIcons.mars,
                      genderIconColor: genderData == gender.male
                          ? kActiveWhite
                          : kInactiveLightGrey,
                    ),
                    function: () {
                      setState(() {
                        genderData = gender.male;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: ReUseableCard(
                    color: kDefaultBlack,
                    cardChild: GenderSelect(
                      gender: 'FEMALE',
                      genderIcon: FontAwesomeIcons.venus,
                      genderIconColor: genderData == gender.female
                          ? kActiveWhite
                          : kInactiveLightGrey,
                    ),
                    function: () {
                      setState(() {
                        genderData = gender.female;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReUseableCard(
                    color: kDefaultBlack,
                    cardChild: Column(
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
                              bmiBrain.setHeight(height);
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReUseableCard(
                    color: kDefaultBlack,
                    cardChild: Column(
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
                                  bmiBrain.setWeight(weight);
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
                                  bmiBrain.setWeight(weight);
                                });
                              },
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReUseableCard(
                    color: kDefaultBlack,
                    cardChild: AgeSelect(),
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
                        Navigator.pushNamed(context, '/result',
                            arguments: PassArgs(
                              bmiBrain.calculateBmi(),
                              bmiBrain.explainBmi(),
                            ));
                      },
                      buttonString: 'CALCULATE YOUR BMI',
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
