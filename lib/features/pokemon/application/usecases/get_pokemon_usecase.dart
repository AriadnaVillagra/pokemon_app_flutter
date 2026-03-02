import 'package:pokemon_app/features/pokemon/domain/entities/pokemon_page.dart';
import 'package:pokemon_app/features/pokemon/domain/repositories/pokemon_repository.dart';

class GetPokemonsUseCase {
  final PokemonRepository repository;

  GetPokemonsUseCase(this.repository);

  Future<PokemonPage> call(String? nextUrl) {
    return repository.getPokemons(nextUrl);
  }
}