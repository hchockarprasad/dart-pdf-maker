import 'package:js/js.dart';

@JS()
class Exports {
  external set add(Function function);
}

@JS()
external Exports get exports;
