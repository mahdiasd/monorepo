// ignore_for_file: prefer_const_constructors
import 'package:network/network.dart';
import 'package:test/test.dart';

void main() {
  group('Network', () {
    test('can be instantiated', () {
      expect(Network(), isNotNull);
    });
  });
}
