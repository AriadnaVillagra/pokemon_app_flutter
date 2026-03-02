// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get profileTitle => 'Profile';

  @override
  String get languageSection => 'Language';

  @override
  String get systemLanguage => 'System language';

  @override
  String get foundResultsPrefix => 'Found';

  @override
  String get foundResultsSuffix => 'results';

  @override
  String get searchPokemonHint => 'Search Pokémon...';

  @override
  String get filterTitle => 'Filter by your preferences';

  @override
  String get filterType => 'Type';

  @override
  String get apply => 'Apply';

  @override
  String get cancel => 'Cancel';

  @override
  String get type_fire => 'Fire';

  @override
  String get type_water => 'Water';

  @override
  String get type_grass => 'Grass';

  @override
  String get type_electric => 'Electric';

  @override
  String get type_psychic => 'Psychic';

  @override
  String get type_rock => 'Rock';

  @override
  String get type_ghost => 'Ghost';

  @override
  String get type_normal => 'Normal';

  @override
  String get type_fighting => 'Fighting';

  @override
  String get type_flying => 'Flying';

  @override
  String get type_poison => 'Poison';

  @override
  String get type_ground => 'Ground';

  @override
  String get type_bug => 'Bug';

  @override
  String get type_steel => 'Steel';

  @override
  String get type_ice => 'Ice';

  @override
  String get type_dragon => 'Dragon';

  @override
  String get type_dark => 'Dark';

  @override
  String get type_fairy => 'Fairy';

  @override
  String get clearFilter => 'Clear filter';

  @override
  String get height => 'Height';

  @override
  String get weight => 'Weight';

  @override
  String get abilities => 'Abilities';

  @override
  String get onboardingContinue => 'Continue';

  @override
  String get onboardingStart => 'Let\'s start';

  @override
  String get onboarding1Title => 'All Pokémon in one place';

  @override
  String get onboarding1Description => 'Access a complete list of Pokémon from all generations created by Nintendo.';

  @override
  String get onboarding2Title => 'Keep your Pokédex updated';

  @override
  String get onboarding2Description => 'Register and save your profile, favorite Pokémon, settings and much more in the app.';

  @override
  String get errorTitle => 'Something went wrong...';

  @override
  String get errorDescription => 'We couldn\'t load the information at this time. Please check your connection or try again later.';

  @override
  String get retry => 'Retry';

  @override
  String get underConstructionTitle => 'Coming soon!';

  @override
  String get underConstructionDescription => 'We\'re working hard to bring you this section. Come back later to discover all the updates.';

  @override
  String favoriteRemoved(String name) {
    return '$name removed from favorites';
  }

  @override
  String get emptyFavoritesTitle => 'You haven\'t marked any Pokémon as favorite';

  @override
  String get emptyFavoritesDescription => 'Tap the heart icon on your favorite Pokémon and they will appear here.';

  @override
  String pokemonNumber(String number) {
    return 'No. $number';
  }

  @override
  String get category => 'Category';

  @override
  String get ability => 'Ability';

  @override
  String get genderDistribution => 'GENDER';

  @override
  String get weaknesses => 'Weaknesses';

  @override
  String get profileRole => 'Trainer';

  @override
  String get languageSpanish => 'Spanish';

  @override
  String get languageEnglish => 'English';

  @override
  String appVersion(String version) {
    return 'Pokemon App v$version';
  }
}
