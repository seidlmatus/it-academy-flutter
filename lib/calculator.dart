import 'dart:math';

class Calculator{

  final int height, weight;

  double? _bmi ;

  Calculator({required this.height, required this.weight});


  String calculateBMI(){
    _bmi = weight / pow(height/100, 2);
    return _bmi.toString();
  }


}