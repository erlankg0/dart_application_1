/// Урок 10: "Основы Dart - классы: свойства и методы классов (static)"
///  static свойства и методы доступны только для класса (объекта) 
/// а не экземпляру класса (объекта)


class Car {
  int currentSpeed = 0;

  void printCurrentSpeed() {
    print(currentSpeed);
  }

  static void checkSpeed() {
    print(Car().currentSpeed);
  }
}

void main() {
  Car().printCurrentSpeed();
  Car.checkSpeed();
  Car car = Car();
  car.currentSpeed = 90;
  car.printCurrentSpeed();
}
