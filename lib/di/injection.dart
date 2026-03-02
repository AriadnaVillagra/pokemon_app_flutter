import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokemon_app/features/pokemon/application/usecases/get_pokemon_detail_usecase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../shared/network/dio_client.dart';
import '../features/pokemon/data/http/pokemon_api_client.dart';
import '../features/pokemon/data/repositories/pokemon_repository_impl.dart';
import '../features/pokemon/domain/repositories/pokemon_repository.dart';
import '../features/pokemon/application/usecases/get_pokemon_usecase.dart';

part 'injection.g.dart';

@riverpod
Dio dio(Ref ref) {
  return DioClient().dio;
}

@riverpod
PokemonApiClient pokemonApiClient(Ref ref) {
  final dio = ref.watch(dioProvider);
  return PokemonApiClient(dio);
}

@riverpod
PokemonRepository pokemonRepository(Ref ref) {
  final apiClient = ref.watch(pokemonApiClientProvider);
  return PokemonRepositoryImpl(apiClient);
}

@riverpod
GetPokemonsUseCase getPokemonsUseCase(Ref ref) {
  final repository = ref.watch(pokemonRepositoryProvider);
  return GetPokemonsUseCase(repository);
}

@riverpod
GetPokemonDetailUseCase getPokemonDetailUseCase(Ref ref) {
  final repository = ref.read(pokemonRepositoryProvider);
  return GetPokemonDetailUseCase(repository);
}
