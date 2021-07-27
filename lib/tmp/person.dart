 class Person {
  String name; //private
  int age; // public

  //constructor
  Person(this.name, this.age);

  void setName(String name) {
    this.name = name;
  }

  String getName() => this.name;

  String getInfoText() {
    return name + ' ' + age.toString();
  }

  bool isAdult() {
    return this.age >= 18;
  }
  bool isAdult_0() => this.age >= 18;


  /*
      if (){
          // true
      } else {
          // false
      }

   */


  bool isAdult_1() {
    if (this.age >= 18) {
      return true;
    } else
      return false;
  }

  bool isAdult_2() {
    return this.age >= 18 ? true : false;
  }

  bool isAdult_3() {
    return isAdult();
  }
}
