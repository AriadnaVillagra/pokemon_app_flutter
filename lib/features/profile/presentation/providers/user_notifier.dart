import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:pokemon_app/features/profile/domain/entities/user.dart';

part 'user_notifier.g.dart';

@riverpod
class UserNotifier extends _$UserNotifier {
  @override
  User build() {
    return const User(
      name: 'Ash Ketchum',
      favoritePokemonNames: {},
    );
  }

  void toggleFavorite(String pokemonName) {
    final favorites = {...state.favoritePokemonNames};

    if (favorites.contains(pokemonName)) {
      favorites.remove(pokemonName);
    } else {
      favorites.add(pokemonName);
    }

    state = state.copyWith(
      favoritePokemonNames: favorites,
    );
  }

  bool isFavorite(String pokemonName) {
    return state.favoritePokemonNames.contains(pokemonName);
  }
}