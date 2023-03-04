// словарь

final Map<String, int> key_value = {
  "1": 1,
  "key": 41,
};

void main() {
  print(key_value);
  print(key_value["1"]);
  key_value.values;
  print(key_value.keys);
  print(key_value.values);
  key_value["erlan"] = 22;
  print(key_value);
  key_value;
  print(key_value.containsKey("1"));
  key_value.putIfAbsent("10", () => 5);
  print(key_value);
  key_value.putIfAbsent("10", () => 5);
  print(key_value);
  key_value.remove("10");
  print(key_value);
}
