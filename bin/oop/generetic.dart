int sum(int a, int b) {
  return a + b;
}

T sums<T extends num>(T a, T b) {
  return (a + b) as T;
}

class Stack<Element> {
  List<Element> storage = [];

  void push(Element value) {
    storage.add(value);
  }

  Element pop() => storage.removeLast();

  @override
  String toString() {
    return storage.toString();
  }
}

String some<R, B>(R a, B b) {
  return "";
}

class Car<Some> {
  Some id;
  String carName;

  Car({required this.carName, required this.id});

  void move() {
    print("The $carName. ID number: $id");
  }

  @override
  String toString() {
    return "$carName $id";
  }
}

class Cuboid {
  double length;
  double width;
  double height;

  Cuboid({
    required this.length,
    required this.width,
    required this.height,
  });

  double get surfaceArea {
    return 2 * (length * width + length * height + width * height);
  }

  double get volume {
    return length * width * height;
  }

  @override
  String toString() {
    return " length: $length \n height: $height \n width: $width";
  }
}

class Cube extends Cuboid {
  Cube({
    required double lenght,
  }) : super(
          height: lenght,
          length: lenght,
          width: lenght,
        );
}

void main() async {
  Cuboid cuboid = Cuboid(length: 1, height: 2, width: 3);
  Cube cube = Cube(lenght: 2);
  print(cuboid.surfaceArea);
  print(cuboid.volume);
  print(cube.volume);
  print(cube.surfaceArea);
}
