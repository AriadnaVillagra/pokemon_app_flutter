import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_filter_state.freezed.dart';

@freezed
class PokemonFilterState with _$PokemonFilterState {
  const factory PokemonFilterState({
    @Default('') String searchQuery,
    @Default(<String>{}) Set<String> selectedTypes,
    String? selectedCategory,
    @Default([]) List<String> selectedValues,
  }) = _PokemonFilterState;

  const PokemonFilterState._();

  factory PokemonFilterState.initial() => const PokemonFilterState();
}