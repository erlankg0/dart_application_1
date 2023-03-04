// set хранит только уникальные элементы

final Set<int> values = {1};
final Set<int> keys = {1, 2, 3};

void main() {
  values.add(1);
  print(values);
  values.union(keys);
  final res = values.union(keys);
  print(res);
}
