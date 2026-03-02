import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokemon_app/features/profile/presentation/providers/user_notifier.dart';

void main() {
  test('Toggle favorite should add and remove pokemon', () {
    final container = ProviderContainer();
    final notifier = container.read(userNotifierProvider.notifier);

    notifier.toggleFavorite('pikachu');

    expect(
      container.read(userNotifierProvider).favoritePokemonNames.contains('pikachu'),
      true,
    );

    notifier.toggleFavorite('pikachu');

    expect(
      container.read(userNotifierProvider).favoritePokemonNames.contains('pikachu'),
      false,
    );
  });
}