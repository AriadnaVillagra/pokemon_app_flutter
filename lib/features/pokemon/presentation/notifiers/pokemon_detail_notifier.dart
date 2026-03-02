import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../di/injection.dart';
import '../../application/usecases/get_pokemon_detail_usecase.dart';
import '../../domain/entities/pokemon_detail.dart';
import '../states/pokemon_detail_state.dart';

part 'pokemon_detail_notifier.g.dart';

@riverpod
class PokemonDetailNotifier extends _$PokemonDetailNotifier {
  late final GetPokemonDetailUseCase _useCase;

  @override
  PokemonDetailState build(String pokemonName) {
    _useCase = ref.read(getPokemonDetailUseCaseProvider);
    _load(pokemonName);
    return PokemonDetailState.initial();
  }

  Future<void> _load(String pokemonName) async {
    try {
      final PokemonDetail detail = await _useCase(pokemonName);

      state = state.copyWith(
        data: detail,
        isLoading: false,
      );
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: 'Failed to load Pokémon',
      );
    }
  }
}