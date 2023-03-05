// способ связывание классов или увеличения классов

mixin Beast {
  void say() {
    print("İst say");
  }
}

mixin Mehanism {
  void repair() {
    print("repair");
  }
}

mixin Flyable {
  void fly() {
    print("fly");
  }
}

class AirBus with Flyable, Mehanism {}

class Duck with Flyable, Beast {}

void main() {
  Duck().fly();
  AirBus().fly();
  AirBus().repair();
  Duck().say();
}
