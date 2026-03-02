import 'package:flutter/material.dart';
import 'package:pokemon_app/l10n/app_localizations.dart';
import '../utils/pokemon_type_colors.dart';
import '../utils/pokemon_type_icons.dart';

class TypeChip extends StatelessWidget {
  final String type;

  const TypeChip({super.key, required this.type});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final typeColor = getPokemonTypeColor(type);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: typeColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 22,
            height: 22,
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Icon(iconDataForType(type), size: 20, color: typeColor),
            ),
          ),

          const SizedBox(width: 8),

          Text(
            _translateType(type, l10n),
            style: const TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }

  String _translateType(String type, AppLocalizations l10n) {
    switch (type) {
      case 'fire':
        return l10n.type_fire;
      case 'water':
        return l10n.type_water;
      case 'grass':
        return l10n.type_grass;
      case 'electric':
        return l10n.type_electric;
      case 'psychic':
        return l10n.type_psychic;
      case 'rock':
        return l10n.type_rock;
      case 'ghost':
        return l10n.type_ghost;
      case 'normal':
        return l10n.type_normal;
      case 'fighting':
        return l10n.type_fighting;
      case 'flying':
        return l10n.type_flying;
      case 'poison':
        return l10n.type_poison;
      case 'ground':
        return l10n.type_ground;
      case 'bug':
        return l10n.type_bug;
      case 'steel':
        return l10n.type_steel;
      case 'ice':
        return l10n.type_ice;
      case 'dragon':
        return l10n.type_dragon;
      case 'dark':
        return l10n.type_dark;
      case 'fairy':
        return l10n.type_fairy;
      default:
        return type;
    }
  }
}
