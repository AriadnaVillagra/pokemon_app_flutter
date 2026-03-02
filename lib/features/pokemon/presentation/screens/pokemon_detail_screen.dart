import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokemon_app/features/pokemon/presentation/utils/pokemon_type_icons.dart';
import 'package:pokemon_app/features/pokemon/presentation/utils/pokemon_type_weaknesses.dart';
import 'package:pokemon_app/features/profile/presentation/providers/user_notifier.dart';
import 'package:pokemon_app/l10n/app_localizations.dart';
import '../notifiers/pokemon_detail_notifier.dart';
import '../../presentation/components/type_chip.dart';
import '../../presentation/utils/pokemon_type_colors.dart';

class PokemonDetailScreen extends ConsumerWidget {
  final String pokemonName;

  const PokemonDetailScreen({super.key, required this.pokemonName});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final user = ref.watch(userNotifierProvider);
    final isFavorite = user.favoritePokemonNames.contains(pokemonName);

    final state = ref.watch(pokemonDetailNotifierProvider(pokemonName));

    if (state.isLoading) {
      return const Scaffold(body: Center(child: CircularProgressIndicator()));
    }

    if (state.error != null) {
      return Scaffold(body: Center(child: Text(state.error!)));
    }

    final pokemon = state.data!;
    final baseColor = getPokemonTypeColor(pokemon.types.first);
    final weaknesses = getWeaknessesForType(pokemon.types.first);

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          /// HEADER BACKGROUND
          SizedBox(
            height: 300,
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: baseColor,
                    borderRadius: const BorderRadius.vertical(
                      bottom: Radius.circular(230),
                    ),
                  ),
                ),
                Positioned(
                  right: 40,
                  bottom: -50,
                  child: Icon(
                    iconDataForType(pokemon.types.first),
                    size: 350,
                    color: Colors.white.withAlpha(85),
                  ),
                ),
              ],
            ),
          ),

          /// CONTENT
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  /// Top bar
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          icon: const Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                          onPressed: () => Navigator.pop(context),
                        ),
                        IconButton(
                          icon: Icon(
                            isFavorite ? Icons.favorite : Icons.favorite_border,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            ref
                                .read(userNotifierProvider.notifier)
                                .toggleFavorite(pokemonName);
                          },
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 60),

                  /// POKEMON IMAGE (NO Positioned acá)
                  Image.network(pokemon.imageUrl, height: 170),

                  const SizedBox(height: 30),

                  /// WHITE CONTAINER
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(24),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(32),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        /// Name
                        Text(
                          pokemon.name.toUpperCase(),
                          style: const TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        const SizedBox(height: 6),

                        /// Number
                        Text(
                          'N°${pokemon.id.toString().padLeft(3, '0')}',
                          style: const TextStyle(color: Colors.grey),
                        ),

                        const SizedBox(height: 20),

                        /// Types
                        Wrap(
                          spacing: 8,
                          alignment: WrapAlignment.center,
                          children: pokemon.types
                              .map((type) => TypeChip(type: type))
                              .toList(),
                        ),

                        const SizedBox(height: 24),

                        /// Description
                        Text(
                          pokemon.description,
                          textAlign: TextAlign.center,
                          style: const TextStyle(fontSize: 16),
                        ),
                        const SizedBox(height: 10),
                        Divider(),
                        GridView.count(
                          crossAxisCount: 2,
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          crossAxisSpacing: 5,
                          childAspectRatio: 2.5,
                          children: [
                            _InfoBox(
                              icon: Icons.balance,
                              title: l10n.weight,
                              value: '${pokemon.weight} kg',
                            ),
                            _InfoBox(
                              icon: Icons.height,
                              title: l10n.height,
                              value: '${pokemon.height} m',
                            ),
                            _InfoBox(
                              icon: Icons.dashboard_outlined,
                              title: l10n.category,
                              value: pokemon.types.first,
                            ),
                            _InfoBox(
                              icon: Icons.catching_pokemon,
                              title: l10n.ability,
                              value: pokemon.abilities.first,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  GenderDistributionBar(
                    malePercentage: 50,
                    femalePercentage: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 20,
                    ),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        l10n.weaknesses,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  Wrap(
                    spacing: 8,
                    runSpacing: 10,
                    alignment: WrapAlignment.start,
                    children: weaknesses
                        .map((type) => TypeChip(type: type))
                        .toList(),
                  ),
                  
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _InfoBox extends StatelessWidget {
  final String title;
  final String value;
  final IconData icon;

  const _InfoBox({
    required this.title,
    required this.value,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 24, color: const Color.fromARGB(255, 83, 83, 83)),
            const SizedBox(width: 6),
            Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                color: Color.fromARGB(255, 83, 83, 83),
                letterSpacing: 1.5,
              ),
            ),
          ],
        ),
        const SizedBox(height: 6),
        Container(
          width: 150,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.grey.shade300),
            color: Colors.white,
          ),
          child: Align(
            alignment: Alignment.center,
            child: Text(
              value.toUpperCase(),
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class GenderDistributionBar extends StatelessWidget {
  final double malePercentage;
  final double femalePercentage;

  const GenderDistributionBar({
    super.key,
    required this.malePercentage,
    required this.femalePercentage,
  });

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// Title
          Center(
            child: Text(
              l10n.genderDistribution,
              style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 1),
            ),
          ),
          const SizedBox(height: 12),

          /// Bar
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: SizedBox(
              height: 8,
              width: double.infinity,
              child: Row(
                children: [
                  /// Male part
                  Expanded(
                    flex: (malePercentage * 10).round(),
                    child: Container(
                      color: const Color(0xFF3B5BB5), // azul
                    ),
                  ),

                  /// Female part
                  Expanded(
                    flex: (femalePercentage * 10).round(),
                    child: Container(
                      color: const Color(0xFFE96B8A), // rosa
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 12),

          /// Percentages
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const Icon(Icons.male, size: 16),
                  const SizedBox(width: 6),
                  Text('${malePercentage.toStringAsFixed(1)}%'),
                ],
              ),
              Row(
                children: [
                  const Icon(Icons.female, size: 16),
                  const SizedBox(width: 6),
                  Text('${femalePercentage.toStringAsFixed(1)}%'),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
