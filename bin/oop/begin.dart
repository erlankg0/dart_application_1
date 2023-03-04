import 'dart:math';

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
  Random random = Random();
  Square square = Square(random.nextInt(500));
  print(square.square);
  print(square);
}
