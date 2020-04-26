import 'dart:math';

class CalculatoBrain {
  CalculatoBrain({this.height, this.weight});

  final int height;
  final int weight;

  double _BMI;
  String bmi() {
    _BMI = weight / pow(height / 100, 2);
    return _BMI.toStringAsFixed(1);
  }

  String getResult() {
    if (_BMI >= 25)
      return 'OverWeight';
    else if (_BMI > 18.5)
      return 'Normal';
    else
      return ('UnderWeight');
  }

  String getInterpretation() {
    if (_BMI >= 25)
      return 'You have higher body weight. Try to excersice more';
    else if (_BMI > 18.5)
      return 'You have normal body weight. Good Job!';
    else
      return ('You are underweight. You should reconsider you diet');
  }
}
