class Pokemon {
  final int id;
  final String name;
  final String imageUrl;
  final List<String> types;
  final int? power;
  final String primaryType;

  const Pokemon({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.primaryType,
    this.types = const [],
    this.power,
  });

  Pokemon copyWith({List<String>? types, int? power}) {
    return Pokemon(
      id: id,
      name: name,
      imageUrl: imageUrl,
      types: types ?? this.types,
      power: power ?? this.power,
      primaryType: primaryType,
    );
  }
}
