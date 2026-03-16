import 'package:flutter_test/flutter_test.dart';
import 'dart:math';

bool isPrime(int n) {
  if (n >= 1) {
    for (int i = 2; i <= sqrt(n); i++) {
      if (n % i == 0) {
        return false;
      }
    }
    return true;
  }
  return false;
}

int sumOfDigits(int n) {
  if (n < 0) {
    throw ArgumentError('Número deve ser não negativo.');
  } else {
    String str = n.toString();
    int soma = 0;
    for (int i = 0; i < str.length; i++) {
      soma += int.parse(str[i]);
    }
    return soma;
  }
}

void main() {
  group('Testes de Número primo', () {
    test('Número primo 7', () {
      expect(isPrime(7), isTrue);
    });
    test('Número não primo 10', () {
      expect(isPrime(10), isFalse);
    });
  });

  group('Testes de Soma dos dígitos', () {
    test('Soma dos dígitos de 123', () {
      expect(sumOfDigits(123), equals(6));
    });
    test('Soma dos dígitos de -1', () {
      expect(sumOfDigits(-1), throwsArgumentError);
    });
  });
}
