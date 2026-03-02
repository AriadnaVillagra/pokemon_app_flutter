import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokemon_app/features/profile/presentation/providers/user_notifier.dart';

final isFavoritePokemonProvider =
    Provider.family<bool, String>((ref, pokemonName) {
  final user = ref.watch(userNotifierProvider);
  return user.favoritePokemonNames.contains(pokemonName);
});