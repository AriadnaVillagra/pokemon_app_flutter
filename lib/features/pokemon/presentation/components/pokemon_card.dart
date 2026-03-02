import 'package:flutter/material.dart';
import 'package:pokemon_app/features/favorites/presentation/components/favorite_button.dart';
import '../utils/pokemon_type_colors.dart';
import 'type_chip.dart';
import '../utils/pokemon_type_icons.dart';

class PokemonCard extends StatelessWidget {
  final String id;
  final String name;
  final String imageUrl;
  final List<String> types;
  final String primaryType;
  final bool isFavorite;
  final VoidCallback onTap;
  final VoidCallback onFavoriteToggle;

  const PokemonCard({
    super.key,
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.types,
    required this.isFavorite,
    required this.onTap,
    required this.onFavoriteToggle,
    required this.primaryType,
  });

  @override
  Widget build(BuildContext context) {
    final baseColor = getPokemonTypeColor(primaryType);
    final blended = Color.alphaBlend(
      Colors.white.withAlpha((0.55 * 255).round()),
      baseColor,
    );
    final watermarkColor = blended.withAlpha((0.99 * 255).round());

    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 9, horizontal: 16),
        height: 135,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [baseColor.withAlpha(85), baseColor],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(24),
        ),
        child: Stack(
          children: [
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'N°${id.toString().padLeft(3, '0')}',
                          style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          _capitalize(name),
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 12),
                        Wrap(
                          spacing: 8,
                          children: types
                              .map((type) => TypeChip(type: type))
                              .toList(),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 170,
                  height: double.infinity,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      /// Color background
                      Container(
                        decoration: BoxDecoration(
                          color: baseColor,
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),

                      /// Watermark icon
                      Positioned(
                        top: -25,
                        child: Icon(
                          iconDataForType(primaryType),
                          size: 190,
                          color: watermarkColor,
                        ),
                      ),

                      /// Pokemon image
                      Image.network(imageUrl, width: 85, fit: BoxFit.fill),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              top: 12,
              right: 12,
              child: FavoriteButton(
                isFavorite: isFavorite,
                onTap: onFavoriteToggle,
              ),
            ),
          ],
        ),
      ),
    );
  }

  String _capitalize(String text) {
    if (text.isEmpty) return text;
    return text[0].toUpperCase() + text.substring(1);
  }
}
