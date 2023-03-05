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

void main() {
  Cup cup = Cup(14.4);
}
