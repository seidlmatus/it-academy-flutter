import 'package:untitled1/person.dart';

main(){
  int value = 8;

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

  var number = 5;
  number = number + 6;
  number += 3;

  number = number % 2;

  print(number);
  print(++number);
  print(number--);
  print(++number);
  print(--number);

  var iterable = ['Salad', 'Popcorn', 'Toast'];
  for (var element in iterable) {
    print(element);
  }

  var i = 5;
  number = 0;
  while(number <= i ){
    print(number ++);
  }


  String text = getText1();
  print('$text');

}




String getText( int value) {
  return 'Text $value';
}

String getText1() => 'Text';
