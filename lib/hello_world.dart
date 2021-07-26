import 'dart:core';
import 'dart:io';

void main() {
  String? value = 'World_2';
  //value = '3';
  print('Value: $value');
  //.............................
  ///doc
  /*
    Bloc coment
   */
  stdout.writeln('Enter value: ');
 // value = stdin.readLineSync();
  print('Hello $value');

  /*
   Strongly Typed Language (Java Swift)
   Dynamic Typed language (Python Ruby, JS)
    Types
      - int
      - double
      - String
      - bool
      - dynamic
   */
  dynamic dynamicVariable = 15;
  print('Variable: $dynamicVariable');
  dynamicVariable = 'String Variable';
  print('Variable: $dynamicVariable');

  // covert
  print(5);
  print(5.toString());
  print(5.toDouble());
  print(5.toStringAsFixed(10));


  print(value.toString());

  try{
    print(double.parse(value));
  }catch(e){
    print('Parser error, value:$value');
  }

  //print(int.parse(value));


  // operatyory
  int number = false? 5:6;
  print(number);

  number++;
  --number;
  number +=5;
  number %=2;
  //

  var n = Num();
  number =  n.number;

}

class Num {
  int number = 10;
}