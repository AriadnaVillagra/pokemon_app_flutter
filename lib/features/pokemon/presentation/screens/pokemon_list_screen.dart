import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokemon_app/features/pokemon/presentation/components/appbar_pokemon_list.dart';
import 'package:pokemon_app/features/pokemon/presentation/components/pokemon_card.dart';
import 'package:pokemon_app/features/pokemon/presentation/components/pokemon_card_skeleton.dart';
import 'package:pokemon_app/features/pokemon/presentation/providers/favorite_pokemon_provider.dart';
import 'package:pokemon_app/features/pokemon/presentation/providers/filtered_pokemon_provider.dart';
import 'package:pokemon_app/features/pokemon/presentation/notifiers/pokemon_filter_notifier.dart';
import 'package:pokemon_app/features/pokemon/presentation/providers/has_active_filters_provider.dart';
import 'package:pokemon_app/features/pokemon/presentation/screens/pokemon_detail_screen.dart';
import 'package:pokemon_app/features/profile/presentation/providers/user_notifier.dart';
import 'package:pokemon_app/l10n/app_localizations.dart';
import '../notifiers/pokemon_list_notifier.dart';

class PokemonListScreen extends ConsumerStatefulWidget {
  const PokemonListScreen({super.key});

  @override
  ConsumerState<PokemonListScreen> createState() => _PokemonListScreenState();
}

class _PokemonListScreenState extends ConsumerState<PokemonListScreen> {
  late final ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    final notifier = ref.read(pokemonListNotifierProvider.notifier);
    final state = ref.read(pokemonListNotifierProvider);
    final extentAfter = _scrollController.position.extentAfter;
    if (!state.hasMore) {
      return;
    }
    if (state.isLoadingMore) {
      return;
    }
    if (extentAfter < 200) {
      notifier.loadMore();
    }
  }

  void _scrollToTop() {
    _scrollController.animateTo(
      0,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(pokemonListNotifierProvider);
    final filteredItems = ref.watch(filteredPokemonProvider);
    final hasActiveFilters = ref.watch(hasActiveFiltersProvider);
    final l10n = AppLocalizations.of(context)!;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!hasActiveFilters) return;

      if (!_scrollController.hasClients) return;

      final extentAfter = _scrollController.position.extentAfter;

      if (extentAfter < 200 && state.hasMore && !state.isLoadingMore) {
        ref.read(pokemonListNotifierProvider.notifier).loadMore();
      }
    });
    return Scaffold(
      appBar: const PokemonListAppBar(),
      body: state.isInitialLoading
          ? const PokemonListSkeleton()
          : Column(
              children: [
                if (hasActiveFilters)
                  SizedBox(
                    width: 350,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        RichText(
                          text: TextSpan(
                            style: const TextStyle(
                              color: Color.fromARGB(255, 102, 101, 101),
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                            ),
                            children: [
                              TextSpan(text: "${l10n.foundResultsPrefix} "),
                              TextSpan(
                                text: "${filteredItems.length} ",
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 107, 105, 105),
                                ),
                              ),
                              TextSpan(text: l10n.foundResultsSuffix),
                            ],
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            ref
                                .read(pokemonFilterNotifierProvider.notifier)
                                .clearFilters();

                            _scrollToTop();
                          },
                          child: Text(
                            l10n.clearFilter,
                            style: const TextStyle(
                              color: Colors.blueAccent,
                              decoration: TextDecoration.underline,
                              decorationColor: Colors.blueAccent,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                Expanded(
                  child: CustomScrollView(
                    controller: _scrollController,
                    slivers: [
                      SliverList(
                        delegate: SliverChildBuilderDelegate(
                          (context, index) {
                            final items = filteredItems;
                            if (index >= items.length) {
                              return const PokemonCardSkeleton();
                            }
                            final pokemon = items[index];

                            return PokemonCard(
                              primaryType: pokemon.primaryType,
                              id: pokemon.id.toString(),
                              name: pokemon.name,
                              imageUrl: pokemon.imageUrl,
                              types: pokemon.types,
                              isFavorite: ref.watch(
                                isFavoritePokemonProvider(pokemon.name),
                              ),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (_) => PokemonDetailScreen(
                                      pokemonName: pokemon.name,
                                    ),
                                  ),
                                );
                              },
                              onFavoriteToggle: () {
                                ref
                                    .read(userNotifierProvider.notifier)
                                    .toggleFavorite(pokemon.name);
                              },
                            );
                          },
                          childCount:
                              filteredItems.length +
                              (!hasActiveFilters && state.isLoadingMore
                                  ? 2
                                  : 0),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
    );
  }
}
