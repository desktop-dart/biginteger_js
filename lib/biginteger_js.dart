@JS()
library BigInteger;

import "package:js/js.dart";

@anonymous
@JS()
abstract class BigInteger {
  /// Returns the absolute value of a bigInt.
  external BigInteger abs();

  /// Performs addition.
  external BigInteger add(dynamic /*num|String|BigInteger*/ number);

  /// Performs the bitwise AND operation.
  external BigInteger and(dynamic /*num|String|BigInteger*/ number);

  /// Performs a comparison between two numbers. If the numbers are equal, it returns 0.
  /// If the first number is greater, it returns 1. If the first number is lesser, it returns -1.
  external num compare(dynamic /*num|String|BigInteger*/ number);

  /// Performs a comparison between the absolute value of two numbers.
  external num compareAbs(dynamic /*num|String|BigInteger*/ number);

  /// Alias for the compare method.
  external num compareTo(dynamic /*num|String|BigInteger*/ number);

  /// Performs integer division, disregarding the remainder.
  external BigInteger divide(dynamic /*num|String|BigInteger*/ number);

  /// Performs division and returns an object with two properties: quotient and remainder.
  /// The sign of the remainder will match the sign of the dividend.
  external dynamic /*{quotient: BigInteger, remainder: BigInteger}*/ divmod(
      dynamic /*num|String|BigInteger*/ number);

  /// Alias for the equals method.
  external bool eq(dynamic /*num|String|BigInteger*/ number);

  /// Checks if two numbers are equal.
  external bool equals(dynamic /*num|String|BigInteger*/ number);

  /// Alias for the greaterOrEquals method.
  external bool geq(dynamic /*num|String|BigInteger*/ number);

  /// Checks if the first number is greater than the second.
  external bool greater(dynamic /*num|String|BigInteger*/ number);

  /// Checks if the first number is greater than or equal to the second.
  external bool greaterOrEquals(dynamic /*num|String|BigInteger*/ number);

  /// Alias for the greater method.
  external bool gt(dynamic /*num|String|BigInteger*/ number);

  /// Returns true if the first number is divisible by the second number, false otherwise.
  external bool isDivisibleBy(dynamic /*num|String|BigInteger*/ number);

  /// Returns true if the number is even, false otherwise.
  external bool isEven();

  /// Returns true if the number is negative, false otherwise.
  /// Returns false for 0 and true for -0.
  external bool isNegative();

  /// Returns true if the number is odd, false otherwise.
  external bool isOdd();

  /// Return true if the number is positive, false otherwise.
  /// Returns true for 0 and false for -0.
  external bool isPositive();

  /// Returns true if the number is prime, false otherwise.
  external bool isPrime();

  /// Returns true if the number is very likely to be prime, false otherwise.
  external bool isProbablePrime([num iterations]);

  /// Returns true if the number is 1 or -1, false otherwise.
  external bool isUnit();

  /// Return true if the number is 0 or -0, false otherwise.
  external bool isZero();

  /// Alias for the lesserOrEquals method.
  external bool leq(dynamic /*num|String|BigInteger*/ number);

  /// Checks if the first number is lesser than the second.
  external bool lesser(dynamic /*num|String|BigInteger*/ number);

  /// Checks if the first number is less than or equal to the second.
  external bool lesserOrEquals(dynamic /*num|String|BigInteger*/ number);

  /// Alias for the lesser method.
  external bool lt(dynamic /*num|String|BigInteger*/ number);

  /// Alias for the subtract method.
  external BigInteger minus(dynamic /*num|String|BigInteger*/ number);

  /// Performs division and returns the remainder, disregarding the quotient.
  /// The sign of the remainder will match the sign of the dividend.
  external BigInteger mod(dynamic /*num|String|BigInteger*/ number);

  /// Finds the multiplicative inverse of the number modulo mod.
  external BigInteger modInv(dynamic /*num|String|BigInteger*/ number);

  /// Takes the number to the power exp modulo mod.
  external BigInteger modPow(dynamic /*num|String|BigInteger*/ exp,
      dynamic /*num|String|BigInteger*/ mod);

  /// Performs multiplication.
  external BigInteger multiply(dynamic /*num|String|BigInteger*/ number);

  /// Reverses the sign of the number.
  external BigInteger negate();

  /// Alias for the notEquals method.
  external bool neq(dynamic /*num|String|BigInteger*/ number);

  /// Adds one to the number.
  external BigInteger next();

  /// Performs the bitwise NOT operation.
  external BigInteger not();

  /// Checks if two numbers are not equal.
  external bool notEquals(dynamic /*num|String|BigInteger*/ number);

  /// Performs the bitwise OR operation.
  external BigInteger or(dynamic /*num|String|BigInteger*/ number);

  /// Alias for the divide method.
  external BigInteger over(dynamic /*num|String|BigInteger*/ number);

  /// Alias for the add method.
  external BigInteger plus(dynamic /*num|String|BigInteger*/ number);

  /// Performs exponentiation. If the exponent is less than 0, pow returns 0.
  /// bigInt.zero.pow(0) returns 1.
  external BigInteger pow(dynamic /*num|String|BigInteger*/ number);

  /// Subtracts one from the number.
  external BigInteger prev();

  /// Alias for the mod method.
  external BigInteger remainder(dynamic /*num|String|BigInteger*/ number);

  /// Shifts the number left by n places in its binary representation.
  /// If a negative number is provided, it will shift right.
  /// Throws an error if number is outside of the range [-9007199254740992, 9007199254740992].
  external BigInteger shiftLeft(dynamic /*num|String|BigInteger*/ number);

  /// Shifts the number right by n places in its binary representation.
  /// If a negative number is provided, it will shift left.
  /// Throws an error if number is outside of the range [-9007199254740992, 9007199254740992].
  external BigInteger shiftRight(dynamic /*num|String|BigInteger*/ number);

  /// Squares the number.
  external BigInteger square();

  /// Performs subtraction.
  external BigInteger subtract(dynamic /*num|String|BigInteger*/ number);

  /// Alias for the multiply method.
  external BigInteger times(dynamic /*num|String|BigInteger*/ number);

  /// Converts a bigInt into a native Javascript number. Loses precision for numbers outside the range.
  external num toJSNumber();

  /// Converts a bigInt to a string.
  external String toString([num radix = 10]);

  /// Converts a bigInt to a string. This method is called behind the scenes in JSON.stringify.
  external String toJSON();

  /// Converts a bigInt to a native Javascript number. This override allows you to use native
  /// arithmetic operators without explicit conversion.
  external num valueOf();

  /// Performs the bitwise XOR operation.
  external BigInteger xor(dynamic /*num|String|BigInteger*/ number);
}

@JS('bigInt')
external _InternalFactory get _factory;

@anonymous
@JS()
abstract class _InternalFactory {
  /// Equivalent to bigInt().
  /// Equivalent to bigInt(anotherBigInt).
  /// Equivalent to bigInt(string).
  /// Equivalent to bigInt(num).
  external dynamic call(
      [dynamic /*num|String|BigInteger*/ number_string_bigInt,
      dynamic /*num|String|BigInteger*/ base]);

  external dynamic fromArray(List digits,
      [int base = 10, bool isNegative = false]);
}

abstract class MakeBigInt {
  static BigInteger fromNum([num number = 0]) => _factory(number);

  static BigInteger fromString(String string, [int base = 10]) =>
      _factory(string, base);

  static BigInteger fromAnother(BigInteger integer) => _factory(integer);

  static BigInteger fromRadixArray(List digits,
          [int base = 10, bool isNegative = false]) =>
      _factory.fromArray(digits, base, isNegative);

  static BigInteger fromBytes(List /* num | BigInteger */ bytes,
          [bool isNegative = false]) =>
      _factory.fromArray(bytes, 256, isNegative);
}
