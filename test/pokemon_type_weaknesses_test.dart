import 'package:flutter_test/flutter_test.dart';
import 'package:pokemon_app/features/pokemon/presentation/utils/pokemon_type_weaknesses.dart';

void main() {
  group('Pokemon Type Weaknesses', () {
    test('Fire type should have water weakness', () {
      final weaknesses = getWeaknessesForType('fire');

      expect(weaknesses.contains('water'), true);
    });

    test('Unknown type should return empty list', () {
      final weaknesses = getWeaknessesForType('unknown');

      expect(weaknesses.isEmpty, true);
    });
  });
}