import 'dart:async';

import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mocktail/mocktail.dart';

import 'package:pokemon_app/features/pokemon/application/usecases/get_pokemon_detail_usecase.dart';
import 'package:pokemon_app/features/pokemon/domain/entities/pokemon_detail.dart';
import 'package:pokemon_app/features/pokemon/presentation/notifiers/pokemon_detail_notifier.dart';
import 'package:pokemon_app/di/injection.dart';

class MockGetPokemonDetailUseCase extends Mock
    implements GetPokemonDetailUseCase {}

extension PumpContainer on ProviderContainer {
  Future<void> pump() async {
    await Future<void>.delayed(Duration.zero);
  }
}

void main() {
  late MockGetPokemonDetailUseCase mockUseCase;

  setUp(() {
    mockUseCase = MockGetPokemonDetailUseCase();
  });

  test('PokemonDetailNotifier loads pokemon successfully', () async {
    final fakeDetail = PokemonDetail(
      id: 25,
      name: 'pikachu',
      imageUrl: '',
      types: ['electric'],
      height: 0.4,
      weight: 6.0,
      abilities: ['static'],
      stats: {'attack': 55},
      power: 320,
      description: 'Electric mouse',
      malePercentage: 50,
      femalePercentage: 50,
      weaknesses: ['ground'],
    );

    when(() => mockUseCase.call('pikachu')).thenAnswer((_) async => fakeDetail);

    final container = ProviderContainer(
      overrides: [
        getPokemonDetailUseCaseProvider.overrideWithValue(mockUseCase),
      ],
    );

    final completer = Completer<void>();

    container.listen(pokemonDetailNotifierProvider('pikachu'), (
      previous,
      next,
    ) {
      if (next.data != null) {
        completer.complete();
      }
    }, fireImmediately: true);

    await completer.future;

    final state = container.read(pokemonDetailNotifierProvider('pikachu'));

    expect(state.data, isNotNull);
    expect(state.data!.name, 'pikachu');
  });
}
