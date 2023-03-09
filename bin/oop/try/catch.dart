/// Урок 12: "Основы Dart - обработка исключений (try/catch)"

class IncorrectIntString {
  @override
  String toString() {
    return "Нельзя делить строку с цифрой";
  }
}

class Zero {
  @override
  String toString() {
    return "Нельзя делить на 0";
  }
}

double div(String a, String b) {
  final left = int.tryParse(a);
  final right = int.tryParse(b);

  if (left == null || right == null) {
    throw IncorrectIntString();
  }

  if (right == 0) {
    throw Zero();
  }

  return left / right;
}

void main() {
  try {
    final res = div("5", "a");
    print(res);
  } on Zero catch (error) {
    print(error);
  } on IncorrectIntString catch (error) {
    print(error);
  } on Exception catch (error) {
    print(error);
  } finally {
    print(1);
  }
}
