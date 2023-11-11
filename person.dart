import 'person-base.dart';

void main() {
  // Person myPerson = Person('anderson', 28, true);

  // // print(myPerson._name); //! no se puede hacer porque esta privado

  // myPerson.dance();

  // Person myPerson1 = Person('Juanita', 31, false);

  // myPerson1.dance();

  Male myMale = Male('anderson', 28);
  Female myFemale = Female('Juanita', 32, Time.night);

  myMale.dance();
  myMale.run();
  myFemale.dance();
}

class Male extends Person {
  String name;
  int age;

  Male(this.name, this.age) : super(name, age, true);

  run() {
    print('El usuario $name de edad $age corre');
  }
}

class Female extends Person {
  String name;
  int age;
  Time time;

  Female(this.name, this.age, this.time) : super(name, age, false);

  @override
  dance() {
    super.dance();

    switch (time) {
      case Time.day:
        print('En el dia');
        break;
      case Time.night:
        print('En la noche');
        break;
    }
  }
}

enum Time { day, night }
