import 'dart:math';

import 'extends.dart';

class Car {
  late String _make;
  late String _model;
  late int _year;
  late String _color;
  static final wheels = 4;

  Car({
    required String make,
    required String model,
    required int year,
    required String color,
  }) {
    _make = make;
    _model = model;
    _year = year;
    _color = color;
  }

  bool _checkName(String value) {
    if (value.length < 3) {
      return false;
    } else if (value == "Erlan") {
      return false;
    } else {
      return true;
    }
  }

  bool _checkYear(int value) {
    if (value > 1930) {
      return true;
    } else {
      return false;
    }
  }

  String get make => _make;
  set make(String value) {
    if (_checkName(value)) {
      _make = value;
    } else {
      throw FormatException("Ошибка в название марки($value)");
    }
  }
  
  String get model => _model;
  set model(String value) {
    if (_checkName(value)) {
      _model = value;
    } else {
      throw FormatException("Ошибка в название модели($value)");
    }
  }

  int get year => _year;
  set year(int value) {
    if (_checkYear(value)) {
      _year = value;
    } else {
      throw FormatException("Ошибка в годе $value");
    }
  }

  String get color => _color;
  set color(String value) => _color = value;

  void start() {
    print('Starting the engine...');
  }

  void stop() {
    print('Stopping the engine...');
  }

  void drive() {
    print('Driving...');
  }

  @override
  String toString() {
    return '$_make-$_model: $_color, $_year';
  }
}

class Square {
  final int _side;
  int get length => _side;
  int get weidth => _side;
  int get square => length * weidth;

  Square(this._side);

  @override
  String toString() {
    return 'Квадрат: $lengthсм X $weidthсм';
  }
}

class Employer {
  String name;
  String surName;
  String lastName;
  String passportNo;
  List<int> salary = [];

  Employer(
      {required this.name,
      required this.lastName,
      required this.surName,
      required this.passportNo}) {
    name = name;
    surName = surName;
    lastName = lastName;
    passportNo = passportNo;
  }

  bool checkValueSalary(int value) {
    if (value <= 999) {
      return false;
    } else if (value >= 2000) {
      return true;
    } else {
      return false;
    }
  }

  void getSalary(int value) {
    if (checkValueSalary(value)) {
      salary.add(value);
      print("Выполучили заработную плату $value Р");
    }
  }

  String middleSalary() {
    if (salary.isNotEmpty) {
      double value =
          salary.reduce((value, element) => value += element) / salary.length;
      String fixedValue = value.toStringAsFixed(2);
      return fixedValue;
    } else {
      return "0.0";
    }
  }

  Map salaryHistory() {
    Map result = {};
    int mounth = 1;
    for (var i = 0; i < salary.length; i++) {
      result["$mounth месяц"] = salary[i];
      mounth++;
    }
    return result;
  }

  @override
  String toString() {
    return "Name $name: Surname $surName Lastname: $lastName Passport№ $passportNo";
  }
}

void main() {
  Car car = Car(make: "BMW", model: "e46", year: 2023, color: "RED");
  print(car);
  car.make = "o";
  print(car);
}
