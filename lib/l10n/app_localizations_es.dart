// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get profileTitle => 'Perfil';

  @override
  String get languageSection => 'Idioma';

  @override
  String get systemLanguage => 'Idioma del sistema';

  @override
  String get foundResultsPrefix => 'Se han encontrado';

  @override
  String get foundResultsSuffix => 'resultados';

  @override
  String get searchPokemonHint => 'Buscar Pokémon...';

  @override
  String get filterTitle => 'Filtra por tus preferencias';

  @override
  String get filterType => 'Tipo';

  @override
  String get apply => 'Aplicar';

  @override
  String get cancel => 'Cancelar';

  @override
  String get type_fire => 'Fuego';

  @override
  String get type_water => 'Agua';

  @override
  String get type_grass => 'Planta';

  @override
  String get type_electric => 'Eléctrico';

  @override
  String get type_psychic => 'Psíquico';

  @override
  String get type_rock => 'Roca';

  @override
  String get type_ghost => 'Fantasma';

  @override
  String get type_normal => 'Normal';

  @override
  String get type_fighting => 'Lucha';

  @override
  String get type_flying => 'Volador';

  @override
  String get type_poison => 'Veneno';

  @override
  String get type_ground => 'Tierra';

  @override
  String get type_bug => 'Bicho';

  @override
  String get type_steel => 'Acero';

  @override
  String get type_ice => 'Hielo';

  @override
  String get type_dragon => 'Dragón';

  @override
  String get type_dark => 'Siniestro';

  @override
  String get type_fairy => 'Hada';

  @override
  String get clearFilter => 'Borrar filtro';

  @override
  String get height => 'Altura';

  @override
  String get weight => 'Peso';

  @override
  String get abilities => 'Habilidades';

  @override
  String get onboardingContinue => 'Continuar';

  @override
  String get onboardingStart => 'Empecemos';

  @override
  String get onboarding1Title => 'Todos los Pokémon en un solo lugar';

  @override
  String get onboarding1Description => 'Accede a una amplia lista de Pokémon de todas las generaciones creadas por Nintendo.';

  @override
  String get onboarding2Title => 'Mantén tu Pokédex actualizada';

  @override
  String get onboarding2Description => 'Regístrate y guarda tu perfil, Pokémon favoritos, configuraciones y mucho más en la aplicación.';

  @override
  String get errorTitle => 'Algo salió mal...';

  @override
  String get errorDescription => 'No pudimos cargar la información en este momento. Verifica tu conexión o intenta nuevamente más tarde.';

  @override
  String get retry => 'Reintentar';

  @override
  String get underConstructionTitle => '¡Muy pronto disponible!';

  @override
  String get underConstructionDescription => 'Estamos trabajando para traerte esta sección. Vuelve más adelante para descubrir todas las novedades.';

  @override
  String favoriteRemoved(String name) {
    return '$name eliminado de favoritos';
  }

  @override
  String get emptyFavoritesTitle => 'No has marcado ningún Pokémon como favorito';

  @override
  String get emptyFavoritesDescription => 'Haz clic en el ícono de corazón de tus Pokémon favoritos y aparecerán aquí.';

  @override
  String pokemonNumber(String number) {
    return 'N°$number';
  }

  @override
  String get category => 'Categoría';

  @override
  String get ability => 'Habilidad';

  @override
  String get genderDistribution => 'GÉNERO';

  @override
  String get weaknesses => 'Debilidades';

  @override
  String get profileRole => 'Entrenador';

  @override
  String get languageSpanish => 'Español';

  @override
  String get languageEnglish => 'Inglés';

  @override
  String appVersion(String version) {
    return 'Pokemon App v$version';
  }
}
