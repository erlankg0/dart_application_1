import 'dart:async';

import 'package:test/test.dart';

// Steam = поток асинхроность

// Thread = поток многопоточность

Stream<int>? stream;

StreamSubscription<int>? subscription;

void main() async {
  print("one");

  stream = Stream.periodic(Duration(seconds: 1), (tick) => tick);
  print("two");
  await for (var item in stream!) {
    print(item);
  }
  print('three');
  Future.delayed(Duration(seconds: 3), () => subscription?.cancel());
}
