import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokemon_app/features/pokemon/presentation/components/pokemon_card.dart';
import 'package:pokemon_app/features/pokemon/presentation/notifiers/pokemon_list_notifier.dart';
import 'package:pokemon_app/features/profile/presentation/providers/user_notifier.dart';
import 'package:pokemon_app/l10n/app_localizations.dart';
import 'package:pokemon_app/navigation/routes.dart';
import 'package:flutter/services.dart';

class FavoriteScreen extends ConsumerWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final user = ref.watch(userNotifierProvider);
    final favorites = user.favoritePokemonNames;

    final pokemonState = ref.watch(pokemonListNotifierProvider);

    if (favorites.isEmpty) {
      return const _EmptyFavoritesState();
    }

    final favoritePokemons = pokemonState.items
        .where((pokemon) => favorites.contains(pokemon.name))
        .toList();

    return SafeArea(
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(vertical: 40),
        itemCount: favoritePokemons.length,
        itemBuilder: (context, index) {
          final pokemon = favoritePokemons[index];

          return Dismissible(
            key: ValueKey(pokemon.name),
            direction: DismissDirection.endToStart,
            onDismissed: (_) {
              HapticFeedback.mediumImpact();
              ref
                  .read(userNotifierProvider.notifier)
                  .toggleFavorite(pokemon.name);

              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(  l10n.favoriteRemoved(pokemon.name),),
                  duration: const Duration(seconds: 2),
                ),
              );
            },
            background: Container(
              margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(24),
              ),
              alignment: Alignment.centerRight,
              padding: const EdgeInsets.only(right: 10),
              child: const Icon(
                Icons.delete_sweep_outlined,
                color: Colors.white,
                size: 40,
              ),
            ),
            child: PokemonCard(
              id: pokemon.id.toString(),
              name: pokemon.name,
              imageUrl: pokemon.imageUrl,
              types: pokemon.types,
              primaryType: pokemon.types.isNotEmpty
                  ? pokemon.types.first
                  : 'normal',
              isFavorite: true,
              onTap: () {
                Navigator.pushNamed(
                  context,
                  AppRoutes.pokemonDetail,
                  arguments: pokemon.name,
                );
              },
              onFavoriteToggle: () {
                ref
                    .read(userNotifierProvider.notifier)
                    .toggleFavorite(pokemon.name);
              },
            ),
          );
        },
      ),
    );
  }
}

class _EmptyFavoritesState extends StatelessWidget {
  const _EmptyFavoritesState();

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/error-image.png'),
            const SizedBox(height: 24),

            Text(
              l10n.emptyFavoritesTitle,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 12),

            Text(
              l10n.emptyFavoritesDescription,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}