import 'package:untitled1/person.dart';

main(){
  int value = 8;
  var number = 5;
  //String text = "Value: ";

  //print('Hello ' + value.toString());
  //print('Hello $number');

  //print('$text');

  Person jano = Person("Jano", 15);
  print('Person ${jano.getName()}');
  print('Person ${jano.getInfoText()}');

  Person peter = Person('Peter', 30);
  print('Person ${peter.getName()}');
  print('Person ${peter.getInfoText()}');

  peter.setName('Martin');
  print('Person ${peter.getName()}');

  print('Is Peter adult:  ${peter.isAdult()}');



  String text = getText1();
  print('$text');

}




String getText( int value) {
  return 'Text $value';
}

String getText1() => 'Text';
