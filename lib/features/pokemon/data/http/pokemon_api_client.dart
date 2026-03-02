import 'package:dio/dio.dart';

class PokemonApiClient {
  final Dio dio;

  PokemonApiClient(this.dio);

  Future<Map<String, dynamic>> fetchPokemonList(String? nextUrl) async {
    final response = await dio.get(nextUrl ?? '/pokemon?limit=15');

    return response.data as Map<String, dynamic>;
  }

  Future<Map<String, dynamic>> fetchPokemonDetail(String name) async {
    final response = await dio.get('/pokemon/$name');

    return response.data as Map<String, dynamic>;
  }
}
