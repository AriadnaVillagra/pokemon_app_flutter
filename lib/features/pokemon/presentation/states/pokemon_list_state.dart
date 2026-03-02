import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/pokemon.dart';

part 'pokemon_list_state.freezed.dart';

@freezed
class PokemonListState with _$PokemonListState {
  const factory PokemonListState({
    @Default([]) List<Pokemon> items,
    @Default(true) bool isInitialLoading,
    @Default(false) bool isLoadingMore,
    String? nextUrl,
    @Default(true) bool hasMore,
  }) = _PokemonListState;

  const PokemonListState._();

  factory PokemonListState.initial() => const PokemonListState();
}