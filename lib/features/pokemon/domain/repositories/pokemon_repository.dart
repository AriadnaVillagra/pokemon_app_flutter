import 'package:pokemon_app/features/pokemon/domain/entities/pokemon.dart';
import 'package:pokemon_app/features/pokemon/domain/entities/pokemon_detail.dart';
import 'package:pokemon_app/features/pokemon/domain/entities/pokemon_page.dart';

abstract class PokemonRepository {
  Future<PokemonPage> getPokemons(String? nextUrl);
  Future<Pokemon> getPokemonPreview(String name);
  Future<PokemonDetail> getPokemonDetail(String name);
}
