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

void main() {
  Rectangle rectangle = Rectangle(Color.Green, 3, 5, 8);
  Circle circle = Circle(Color.Red, 50);
  Square square = Square(Color.Blue, 10);

  List<Shape> items = [rectangle, circle, square];
  for (int i = 0; i < items.length; i++) {
    print(items[i]);
    print(items[i].square);
  }
}
