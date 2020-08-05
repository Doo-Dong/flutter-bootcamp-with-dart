import 'dart:math';

class BmiBrain {
  int height;
  int weight;
  double bmi;

  List<String> returnList = [];

  void setHeight(int height) {
    this.height = height;
  }

  void setWeight(int weight) {
    this.weight = weight;
  }

  String calculateBmi() {
    bmi = (weight / pow(height * 0.01, 2));

    return bmi.toStringAsFixed(1);
  }

  List<String> explainBmi() {
    returnList = [];
    this.calculateBmi();

    if (bmi < 18.5) {
      returnList.add('underweight'.toUpperCase());
      returnList.add('You Need more eat for your health.');
    } else if (bmi > 18.5 && bmi < 23) {
      returnList.add('normal'.toUpperCase());
      returnList.add('Your BMI is Normal, so good condition!');
    } else if (bmi > 23 && bmi < 25) {
      returnList.add('overweight'.toUpperCase());
      returnList.add('You Need diet for your health.');
    } else if (bmi < 25) {
      returnList.add('fat'.toUpperCase());
      returnList.add('You really need diet for your health.');
    }

    return returnList;
  }
}