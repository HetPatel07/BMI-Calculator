import 'dart:math';

class BMICalculator {
  final int height;
  final int weight;
  double _bmi;
  BMICalculator({this.height, this.weight});

  String bmiCalculate() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String bmiReport() {
    if (_bmi >= 25) {
      return 'OVERWEIGHT';
    } else if (_bmi >= 18.5) {
      return 'NORMAL';
    } else {
      return 'UNDERWEIGHT';
    }
  }

  String bmiSuggestion() {
    if (_bmi >= 25) {
      return 'You need to do diet because u r Turning into fat bully';
    } else if (_bmi >= 18.5) {
      return 'Good job bro, U r fit';
    } else {
      return 'Don\'t u eat food. U need to eat more as u r underweight';
    }
  }
}
