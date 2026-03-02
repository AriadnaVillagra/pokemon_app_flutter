import 'package:pokemon_app/features/pokemon/application/usecases/get_pokemon_usecase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../di/injection.dart';
import '../../domain/entities/pokemon_page.dart';
import '../states/pokemon_list_state.dart';

part 'pokemon_list_notifier.g.dart';

@riverpod
class PokemonListNotifier extends _$PokemonListNotifier {
  late final GetPokemonsUseCase _useCase;

  @override
  PokemonListState build() {
    _useCase = ref.read(getPokemonsUseCaseProvider);
    _loadInitial();
    return PokemonListState.initial();
  }

  Future<void> _loadInitial() async {
    try {
      final PokemonPage page = await _useCase(null);

      state = state.copyWith(
        items: page.items,
        nextUrl: page.nextUrl,
        hasMore: page.nextUrl != null,
        isInitialLoading: false,
      );
    } catch (_) {
      state = state.copyWith(isInitialLoading: false, hasMore: false);
    }
  }

  Future<void> loadMore() async {
    if (state.isLoadingMore || !state.hasMore) return;

    state = state.copyWith(isLoadingMore: true);

    try {
      final PokemonPage page = await _useCase(state.nextUrl);

      final updatedItems = [...state.items, ...page.items];

      state = state.copyWith(
        items: updatedItems,
        nextUrl: page.nextUrl,
        hasMore: page.nextUrl != null,
        isLoadingMore: false,
      );
    } catch (_) {
      state = state.copyWith(isLoadingMore: false);
    }
  }
}
