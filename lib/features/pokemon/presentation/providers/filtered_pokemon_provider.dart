import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../domain/entities/pokemon.dart';
import '../notifiers/pokemon_list_notifier.dart';
import '../notifiers/pokemon_filter_notifier.dart';

final filteredPokemonProvider = Provider<List<Pokemon>>((ref) {
  final listState = ref.watch(pokemonListNotifierProvider);
  final filterState = ref.watch(pokemonFilterNotifierProvider);

  return listState.items.where((pokemon) {
    final matchesSearch = pokemon.name
        .toLowerCase()
        .contains(filterState.searchQuery.toLowerCase());

    final matchesType = filterState.selectedTypes.isEmpty
        ? true
        : pokemon.types.any(
            (type) => filterState.selectedTypes.contains(type),
          );

    return matchesSearch && matchesType;
  }).toList();
});