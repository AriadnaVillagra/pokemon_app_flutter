class PokemonDetail {
  final int id;
  final String name;
  final String imageUrl;
  final List<String> types;
  final double height; // en metros
  final double weight; // en kg
  final List<String> abilities;
  final Map<String, int> stats;
  final int power;
  final String description;
  final double malePercentage;
  final double femalePercentage;
  final List<String> weaknesses;

  const PokemonDetail({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.types,
    required this.height,
    required this.weight,
    required this.abilities,
    required this.stats,
    required this.power,
    required this.description,
    required this.malePercentage,
    required this.femalePercentage,
    required this.weaknesses,
  });
}
