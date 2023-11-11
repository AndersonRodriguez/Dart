abstract class Person {
  String _name;
  int age;
  bool sex;

  String get name {
    return _name + '!';
  }

  void set name(String inputName) {
    _name = inputName + '*';
  }

  Person(this._name, this.age, this.sex);

  dance() {
    if (sex)
      print('El usuario $_name de edad $age baila');
    else
      print('La usuaria $_name de edad $age baila');
  }
}
