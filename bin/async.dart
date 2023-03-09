import 'dart:io';

import 'package:test/test.dart';

/// Урок 13: "Основы Dart - асинхронность част первая (Future) + немного теории"

Future<int> sum(int a, int b) {
  return Future.sync(() => a + b);
}

Future<void> main() async {
  final a = await sum(1, 5);
  print(a);
  final b = await sum(a, 4);
  print(b);
  final c = await sum(a, b);
  print(c);
}
