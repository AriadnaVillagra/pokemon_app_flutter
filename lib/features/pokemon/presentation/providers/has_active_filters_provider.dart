import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokemon_app/features/pokemon/presentation/notifiers/pokemon_filter_notifier.dart';

final hasActiveFiltersProvider = Provider<bool>((ref) {
  final filter = ref.watch(pokemonFilterNotifierProvider);

  return filter.searchQuery.isNotEmpty ||
      filter.selectedTypes.isNotEmpty;
});