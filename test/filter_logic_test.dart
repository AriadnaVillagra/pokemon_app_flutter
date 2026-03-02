import 'package:flutter_test/flutter_test.dart';
import 'package:pokemon_app/features/pokemon/domain/entities/pokemon.dart';

void main() {
  test('Filter by search should return matching pokemon', () {
    final pokemons = [
      Pokemon(
        id: 1,
        name: 'pikachu',
        imageUrl: '',
        primaryType: 'electric',
        types: ['electric'],
      ),
      Pokemon(
        id: 2,
        name: 'charmander',
        imageUrl: '',
        primaryType: 'fire',
        types: ['fire'],
      ),
    ];

    final result = pokemons
        .where((p) => p.name.contains('pik'))
        .toList();

    expect(result.length, 1);
    expect(result.first.name, 'pikachu');
  });
}