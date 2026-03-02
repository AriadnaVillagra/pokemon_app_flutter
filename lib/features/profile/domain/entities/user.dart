class User {
  final String name;
  final Set<String> favoritePokemonNames;

  const User({
    required this.name,
    required this.favoritePokemonNames,
  });

  User copyWith({
    String? name,
    Set<String>? favoritePokemonNames,
  }) {
    return User(
      name: name ?? this.name,
      favoritePokemonNames:
          favoritePokemonNames ?? this.favoritePokemonNames,
    );
  }
}