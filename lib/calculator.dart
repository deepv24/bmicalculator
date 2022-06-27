import 'dart:math';

class Calculator {
  Calculator({this.height, this.weight});
  final int height;
  final int weight;
  double _bmi;
  String calculatebmi() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getresult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getinterpretation() {
    if (_bmi >= 25) {
      return 'you have a higher than normal body weight.try to exercise more';
    } else if (_bmi >= 18.5) {
      return 'you have a Normal body weight.Good job!';
    } else {
      return 'you have a lower than normal body weight.you can eat bit more';
    }
  }
}
