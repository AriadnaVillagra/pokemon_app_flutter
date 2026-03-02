import '../../domain/entities/pokemon_detail.dart';
import '../../domain/repositories/pokemon_repository.dart';

class GetPokemonDetailUseCase {
  final PokemonRepository repository;

  GetPokemonDetailUseCase(this.repository);

  Future<PokemonDetail> call(String name) {
    return repository.getPokemonDetail(name);
  }
}