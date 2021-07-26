class Car extends Detail {
  double price = 12000.00;


}

class bmw extends Car{}

class Mini extends Car{
  String addresa='Bratislava';
}

abstract class Detail {
  String color = 'Red';
  String owner ='jano';

}