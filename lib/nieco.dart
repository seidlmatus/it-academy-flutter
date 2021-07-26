import 'package:untitled1/person.dart';

main(){
  int value = 8;
  var number = 5;
  //String text = "Value: ";

  //print('Hello ' + value.toString());
  //print('Hello $number');

  //print('$text');

  Person person = Person();
  print('Person ${person.getName()}');

  String text = getText1();
  print('$text');

}






String getText( int value) {
  return 'Text $value';
}

String getText1() => 'Text';
