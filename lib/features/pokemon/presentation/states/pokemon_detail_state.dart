import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/pokemon_detail.dart';

part 'pokemon_detail_state.freezed.dart';

@freezed
class PokemonDetailState with _$PokemonDetailState {
  const factory PokemonDetailState({
    PokemonDetail? data,
    @Default(true) bool isLoading,
    String? error,
  }) = _PokemonDetailState;

  const PokemonDetailState._();

  factory PokemonDetailState.initial() => const PokemonDetailState();
}