/// Урок 10: "Основы Dart - классы: свойства и методы классов (static)"
///  static свойства и методы доступны только для класса (объекта) 
/// а не экземпляру класса (объекта)
/// 
/// представим есть класс который хранить картинку котарая весит 1мб и 
/// создадим 1000 экземпляторв классов то есть это будет 1000мб
/// что бы оптизимизовать надо эту картинку сделать static что оно точно
/// что она создала только одну картинку в которую будет ссылкаться все эти
/// 1000 экземпляторв


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
