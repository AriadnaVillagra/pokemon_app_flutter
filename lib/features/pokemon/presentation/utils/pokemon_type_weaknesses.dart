const Map<String, List<String>> pokemonTypeWeaknesses = {
  'fire': ['water', 'rock', 'ground'],
  'water': ['electric', 'grass'],
  'grass': ['fire', 'ice', 'poison', 'flying', 'bug'],
  'electric': ['ground'],
  'psychic': ['bug', 'ghost', 'dark'],
  'rock': ['water', 'grass', 'fighting', 'ground', 'steel'],
  'ghost': ['ghost', 'dark'],
  'normal': ['fighting'],
};

List<String> getWeaknessesForType(String type) {
  return pokemonTypeWeaknesses[type] ?? [];
}