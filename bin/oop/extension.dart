/// Урок 9: "Основы Dart - классы: расширения/extension"
///
/// extension Name on String расшириения для класс строки
/// например можно расширить класс String 
/// есть цифры но написаны в строке добавлять новый метож который парсить их 
/// double 
///  double? toDoble() {
///     return double.tryParse(this);
///   }
/// 

extension StringToDoble on String {
  double? toDoble() {
    return double.tryParse(this);
  }
}

void main() {
  final a = 5;
  final b = '55';
  a.toDouble();
  final c = b.toDoble();
  print(c);
  
}
