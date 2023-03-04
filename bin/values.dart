// массив, словарь, множество

List<int> lst = [
  1,
  4,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
];

bool checkValue(Object key) {
  final values = [60, 999, 14, "dart1", 45, 95, "dart", 1];
  if (values.contains(key)) {
    return true;
  } else {
    return false;
  }
}

void main() {
  print(checkValue(15));
}
