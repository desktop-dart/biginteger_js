import 'dart:html';
import 'package:biginteger_js/biginteger_js.dart';

void main() {
  print(bigInt(50).add(5).toString());
  final BigInteger b = bigInt('75643564363473453456342378564387956906736546456235345');
  print(b);
  print(bigInt(55));
  print(bigIntArray([1, 2, 3, 4], 10, false));
}
