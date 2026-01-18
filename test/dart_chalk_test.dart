import 'package:flutter_test/flutter_test.dart';
import 'package:dart_chalk/dart_chalk.dart';

void main() {
  test('Chalk applies red color', () {
    final result = chalk.red('test');
    expect(result, contains('test'));
    expect(result, contains('\x1B[31m'));
  });

  test('Chalk can combine styles', () {
    final result = chalk.red.bold('test');
    expect(result, contains('\x1B[31m'));
    expect(result, contains('\x1B[1m'));
  });

  test('Chalk can be disabled', () {
    Chalk.enabled = false;
    final result = chalk.red('test');
    expect(result, equals('test'));
    Chalk.enabled = true;
  });
}
