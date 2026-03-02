import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_es.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('es')
  ];

  /// Profile screen title
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get profileTitle;

  /// Language section title in profile screen
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get languageSection;

  /// Option to use device language
  ///
  /// In en, this message translates to:
  /// **'System language'**
  String get systemLanguage;

  /// Text before results number
  ///
  /// In en, this message translates to:
  /// **'Found'**
  String get foundResultsPrefix;

  /// Text after results number
  ///
  /// In en, this message translates to:
  /// **'results'**
  String get foundResultsSuffix;

  /// Placeholder text for Pokémon search field
  ///
  /// In en, this message translates to:
  /// **'Search Pokémon...'**
  String get searchPokemonHint;

  /// Filter bottom sheet title
  ///
  /// In en, this message translates to:
  /// **'Filter by your preferences'**
  String get filterTitle;

  /// Filter by type label
  ///
  /// In en, this message translates to:
  /// **'Type'**
  String get filterType;

  /// Apply filters button
  ///
  /// In en, this message translates to:
  /// **'Apply'**
  String get apply;

  /// Cancel filters button
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @type_fire.
  ///
  /// In en, this message translates to:
  /// **'Fire'**
  String get type_fire;

  /// No description provided for @type_water.
  ///
  /// In en, this message translates to:
  /// **'Water'**
  String get type_water;

  /// No description provided for @type_grass.
  ///
  /// In en, this message translates to:
  /// **'Grass'**
  String get type_grass;

  /// No description provided for @type_electric.
  ///
  /// In en, this message translates to:
  /// **'Electric'**
  String get type_electric;

  /// No description provided for @type_psychic.
  ///
  /// In en, this message translates to:
  /// **'Psychic'**
  String get type_psychic;

  /// No description provided for @type_rock.
  ///
  /// In en, this message translates to:
  /// **'Rock'**
  String get type_rock;

  /// No description provided for @type_ghost.
  ///
  /// In en, this message translates to:
  /// **'Ghost'**
  String get type_ghost;

  /// No description provided for @type_normal.
  ///
  /// In en, this message translates to:
  /// **'Normal'**
  String get type_normal;

  /// No description provided for @type_fighting.
  ///
  /// In en, this message translates to:
  /// **'Fighting'**
  String get type_fighting;

  /// No description provided for @type_flying.
  ///
  /// In en, this message translates to:
  /// **'Flying'**
  String get type_flying;

  /// No description provided for @type_poison.
  ///
  /// In en, this message translates to:
  /// **'Poison'**
  String get type_poison;

  /// No description provided for @type_ground.
  ///
  /// In en, this message translates to:
  /// **'Ground'**
  String get type_ground;

  /// No description provided for @type_bug.
  ///
  /// In en, this message translates to:
  /// **'Bug'**
  String get type_bug;

  /// No description provided for @type_steel.
  ///
  /// In en, this message translates to:
  /// **'Steel'**
  String get type_steel;

  /// No description provided for @type_ice.
  ///
  /// In en, this message translates to:
  /// **'Ice'**
  String get type_ice;

  /// No description provided for @type_dragon.
  ///
  /// In en, this message translates to:
  /// **'Dragon'**
  String get type_dragon;

  /// No description provided for @type_dark.
  ///
  /// In en, this message translates to:
  /// **'Dark'**
  String get type_dark;

  /// No description provided for @type_fairy.
  ///
  /// In en, this message translates to:
  /// **'Fairy'**
  String get type_fairy;

  /// Button to clear active filters
  ///
  /// In en, this message translates to:
  /// **'Clear filter'**
  String get clearFilter;

  /// Label for Pokémon height
  ///
  /// In en, this message translates to:
  /// **'Height'**
  String get height;

  /// Label for Pokémon weight
  ///
  /// In en, this message translates to:
  /// **'Weight'**
  String get weight;

  /// Abilities section title
  ///
  /// In en, this message translates to:
  /// **'Abilities'**
  String get abilities;

  /// Button to go to next onboarding page
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get onboardingContinue;

  /// Final onboarding button to enter the app
  ///
  /// In en, this message translates to:
  /// **'Let\'s start'**
  String get onboardingStart;

  /// First onboarding screen title
  ///
  /// In en, this message translates to:
  /// **'All Pokémon in one place'**
  String get onboarding1Title;

  /// First onboarding screen description
  ///
  /// In en, this message translates to:
  /// **'Access a complete list of Pokémon from all generations created by Nintendo.'**
  String get onboarding1Description;

  /// Second onboarding screen title
  ///
  /// In en, this message translates to:
  /// **'Keep your Pokédex updated'**
  String get onboarding2Title;

  /// Second onboarding screen description
  ///
  /// In en, this message translates to:
  /// **'Register and save your profile, favorite Pokémon, settings and much more in the app.'**
  String get onboarding2Description;

  /// Error screen title
  ///
  /// In en, this message translates to:
  /// **'Something went wrong...'**
  String get errorTitle;

  /// Error screen description
  ///
  /// In en, this message translates to:
  /// **'We couldn\'t load the information at this time. Please check your connection or try again later.'**
  String get errorDescription;

  /// Retry button text
  ///
  /// In en, this message translates to:
  /// **'Retry'**
  String get retry;

  /// Under construction screen title
  ///
  /// In en, this message translates to:
  /// **'Coming soon!'**
  String get underConstructionTitle;

  /// Under construction screen description
  ///
  /// In en, this message translates to:
  /// **'We\'re working hard to bring you this section. Come back later to discover all the updates.'**
  String get underConstructionDescription;

  /// Message when a Pokémon is removed from favorites
  ///
  /// In en, this message translates to:
  /// **'{name} removed from favorites'**
  String favoriteRemoved(String name);

  /// Empty favorites title
  ///
  /// In en, this message translates to:
  /// **'You haven\'t marked any Pokémon as favorite'**
  String get emptyFavoritesTitle;

  /// Empty favorites description
  ///
  /// In en, this message translates to:
  /// **'Tap the heart icon on your favorite Pokémon and they will appear here.'**
  String get emptyFavoritesDescription;

  /// No description provided for @pokemonNumber.
  ///
  /// In en, this message translates to:
  /// **'No. {number}'**
  String pokemonNumber(String number);

  /// Label for Pokémon category or power section
  ///
  /// In en, this message translates to:
  /// **'Category'**
  String get category;

  /// Label for Pokémon ability stat
  ///
  /// In en, this message translates to:
  /// **'Ability'**
  String get ability;

  /// Title of the Pokémon gender distribution section
  ///
  /// In en, this message translates to:
  /// **'GENDER'**
  String get genderDistribution;

  /// Title of the Pokémon weaknesses section
  ///
  /// In en, this message translates to:
  /// **'Weaknesses'**
  String get weaknesses;

  /// User role on profile screen
  ///
  /// In en, this message translates to:
  /// **'Trainer'**
  String get profileRole;

  /// Spanish language name
  ///
  /// In en, this message translates to:
  /// **'Spanish'**
  String get languageSpanish;

  /// English language name
  ///
  /// In en, this message translates to:
  /// **'English'**
  String get languageEnglish;

  /// Text showing app version
  ///
  /// In en, this message translates to:
  /// **'Pokemon App v{version}'**
  String appVersion(String version);
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'es'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return AppLocalizationsEn();
    case 'es': return AppLocalizationsEs();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
