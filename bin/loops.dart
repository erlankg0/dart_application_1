// loops

String messages = "Erlan Abdraimov";

void createMap() {
  List<String> keys = ["a", "b", "c"];
  List<int> values = [1, 2, 3];
  Map<String, int> zip = {};
  for (int item = 0; item < keys.length; item++) {
    zip[keys[item]] = values[item];
  }
  print(zip);
}

void main() {
  List<String> keys = ["a", "b", "c"];
  List<int> numbers = List.generate(100, (index) => index);
  numbers.add(2);
  for (int item = 0; item < numbers.length; item++) {
    if (numbers[item] % 2 == 0) {
      numbers.removeWhere((element) => element % 2 == 0);
    }
  }
  print(numbers);
}
