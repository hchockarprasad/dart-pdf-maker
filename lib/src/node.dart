import 'package:js/js.dart';

import 'node/exports.dart';

void main() {
  exports.add = allowInterop(_add);
}

int _add(int a, int b) {
  return a + b;
}
