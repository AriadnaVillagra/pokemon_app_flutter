import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../states/pokemon_filter_state.dart';

part 'pokemon_filter_notifier.g.dart';

@riverpod
class PokemonFilterNotifier extends _$PokemonFilterNotifier {
  @override
  PokemonFilterState build() {
    return PokemonFilterState.initial();
  }

  void updateSearch(String query) {
    state = state.copyWith(searchQuery: query);
  }

  void toggleType(String type) {
    final types = {...state.selectedTypes};

    if (types.contains(type)) {
      types.remove(type);
    } else {
      types.add(type);
    }

    state = state.copyWith(selectedTypes: types);
  }

  void clearFilters() {
    state = PokemonFilterState.initial();
  }

  void updateTypes(Set<String> types) {
    state = state.copyWith(selectedTypes: types);
  }
}
