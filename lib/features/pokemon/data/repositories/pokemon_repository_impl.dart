import 'package:pokemon_app/features/pokemon/domain/entities/pokemon_detail.dart';

import '../../domain/entities/pokemon.dart';
import '../../domain/entities/pokemon_page.dart';
import '../../domain/repositories/pokemon_repository.dart';
import '../http/pokemon_api_client.dart';

class PokemonRepositoryImpl implements PokemonRepository {
  final PokemonApiClient apiClient;

  PokemonRepositoryImpl(this.apiClient);

  @override
  Future<PokemonPage> getPokemons(String? nextUrl) async {
    final listResponse = await apiClient.fetchPokemonList(nextUrl);

    final results = listResponse['results'] as List;
    final newNextUrl = listResponse['next'] as String?;

    // 🔥 1️⃣ Traemos todos los detalles en paralelo
    final detailFutures = results.map((item) {
      final name = item['name'] as String;
      return apiClient.fetchPokemonDetail(name);
    }).toList();

    final details = await Future.wait(detailFutures);

    // 🔥 2️⃣ Construimos las entidades
    final pokemons = details.map((detail) {
      final id = detail['id'] as int;

      final imageUrl =
          detail['sprites']['other']['official-artwork']['front_default'];

      final types = (detail['types'] as List)
          .map((t) => t['type']['name'] as String)
          .toList();

      final primaryType = types.first;

      final power = detail['base_experience'] as int;

      return Pokemon(
        id: id,
        name: detail['name'],
        imageUrl: imageUrl,
        types: types,
        power: power,
        primaryType: primaryType,
      );
    }).toList();

    return PokemonPage(items: pokemons, nextUrl: newNextUrl);
  }

  @override
  Future<PokemonDetail> getPokemonDetail(String name) async {
    final detail = await apiClient.fetchPokemonDetail(name);

    final imageUrl =
        detail['sprites']['other']['official-artwork']['front_default'];

    final types = (detail['types'] as List)
        .map((t) => t['type']['name'] as String)
        .toList();

    final height = (detail['height'] as int) / 10;
    final weight = (detail['weight'] as int) / 10;

    final abilities = (detail['abilities'] as List)
        .where((a) => a['is_hidden'] == false)
        .map((a) => a['ability']['name'] as String)
        .toList();

    final statsList = detail['stats'] as List;
    final stats = {
      for (var s in statsList)
        s['stat']['name'] as String: s['base_stat'] as int,
    };

    final power = detail['base_experience'] as int;

    final description =
        "${name[0].toUpperCase()}${name.substring(1)} is a ${types.first}-type Pokémon.";

    return PokemonDetail(
      id: detail['id'] as int,
      name: name,
      imageUrl: imageUrl,
      types: types,
      height: height,
      weight: weight,
      abilities: abilities,
      stats: stats,
      power: power,
      description: description,
      malePercentage: 50,
      femalePercentage: 50,
      weaknesses: types, // simplificado
    );
  }

  @override
  Future<Pokemon> getPokemonPreview(String name) async {
    final detail = await apiClient.fetchPokemonDetail(name);

    final types = (detail['types'] as List)
        .map((t) => t['type']['name'] as String)
        .toList();

    final power = detail['base_experience'] as int;

    final imageUrl =
        detail['sprites']['other']['official-artwork']['front_default'];

    final id = detail['id'] as int;

    return Pokemon(
      id: id,
      name: name,
      imageUrl: imageUrl,
      types: types,
      power: power,
      primaryType: types.first,
    );
  }
}
