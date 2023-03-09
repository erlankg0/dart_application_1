import 'dart:ffi';
import 'dart:math';

enum Color {
  Red,
  Green,
  Blue,
}

abstract class Shape {
  double get square => 0.0;
  final Color color;

  Shape(this.color);

  @override
  String toString() {
    return "Color: $color";
  }
}

class Rectangle extends Shape {
  final int sideA;
  final int sideB;
  final int sideC;

  @override
  double get square => (sideA + sideB + sideC).toDouble();

  Rectangle(
    Color color,
    this.sideA,
    this.sideB,
    this.sideC,
  ) : super(color);

  @override
  String toString() {
    return super.toString() + "$sideA $sideB $sideC";
  }
}
// если наследуешься наследуешь ВСЁ. Если тебе нужен только один метод из двух
// тогда не наследуйся.
// наследования не наследует __init__

class Circle extends Shape {
  final int radius;

  @override
  double get square => pi * radius * radius;

  Circle(
    Color color,
    this.radius,
  ) : super(color);

  @override
  String toString() {
    return "Color: $color, radius $radius";
  }
}

class Square extends Shape {
  final int side;

  @override
  double get square => (side * side).toDouble();

  Square(Color color, this.side) : super(color);

  @override
  String toString() {
    return "Color: $color, $side X $side";
  }
}

class Vehclie {
  String color;

  Vehclie({required this.color});

  void start() {
    print("Транспорт в движении.");
  }
}

class Car extends Vehclie {
  String carName;

  Car({required String color, required this.carName}) : super(color: color);

  void open() {
    print("Двери автомобиля открыты");
  }

  @override
  void start() {
    print("Автомобиль в движении.");
  }

  @override
  String toString() {
    return "$color: $carName";
  }
}

class Moto extends Vehclie {
  String typeMoto;

  Moto({required String color, required this.typeMoto}) : super(color: color);

  void roll() {
    print("Roll");
  }

  @override
  void start() {
    print("Мотоцикл в движении");
  }

  @override
  String toString() {
    return "$color: $typeMoto";
  }
}

void main() {
  Car car = Car(color: "Green", carName: "Toyota");
  print(car);
  Moto moto = Moto(color: "Yeelow", typeMoto: "SpotBike");
  print(moto);
}
