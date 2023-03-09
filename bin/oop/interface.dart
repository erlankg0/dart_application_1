// интерфейсы

abstract class Dishes {
  void put();
  void fill();
}

abstract class WiedthTable {
  final double weidth;

  WiedthTable(this.weidth);
}

class Cup implements WiedthTable, Dishes {
  @override
  final double weidth;

  Cup(this.weidth);

  @override
  void put() {
    print("puted in Cup");
  }

  @override
  void fill() {
    print("filling Cup");
  }
}

class Plate implements WiedthTable, Dishes {
  @override
  final double weidth;

  Plate(this.weidth);

  @override
  void put() {
    print("puted in Plate");
  }

  @override
  void fill() {
    print("filling Plate");
  }
}

class Table implements WiedthTable, Dishes {
  @override
  final double weidth;

  Table(this.weidth);

  @override
  void put() {
    print("puted on Table");
  }

  @override
  void fill() {}
}

/*
Интерфейс работает как наследования но там не нужно добавлять конструктор
Но можно сразу добавить несколько интерфейсов а в наследование не получилось бы 
так как может быть только один родитель.
Интерфейс смотрить класс и говорить "смотри на предка" и смотреть и на пиши все 
переменые как у предка или методы.
*/

class Car {
  String carName;

  Car(this.carName);

  void move() {
    print("The $carName has started");
  }
}

class Train {
  int speed;

  Train(this.speed);

  void speedMove() {
    print("The Train has started with $speed");
  }
}

class Vehicle implements Car, Train {
  @override
  String carName; // Реализация свойста carName из Car
  @override
  int speed; // реализация свойства speed из Train

  Vehicle({required this.carName, required this.speed});

  @override
  void move() {
    print("The $carName has started");
  }

  @override
  void speedMove() {
    print("Has started with $speed");
  }

  @override
  String toString() {
    return "$carName $speed km/h";
  }
}

void main() {
  Vehicle vehicle = Vehicle(carName: "BMW", speed: 100);
  print(vehicle);
  vehicle.move();
  vehicle.speedMove();
}
