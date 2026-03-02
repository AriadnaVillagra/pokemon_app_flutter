import 'package:pokemon_app/features/pokemon/domain/entities/pokemon.dart';

class PokemonPage {
  final List<Pokemon> items;
  final String? nextUrl;

  const PokemonPage({
    required this.items,
    required this.nextUrl,
  });
}