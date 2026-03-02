# 🧩 Flutter Pokédex App

Flutter application built as a technical challenge.

The app consumes the public PokeAPI and allows users to:

-   Browse Pokémon list
-   View Pokémon details
-   Filter by type
-   Mark favorites
-   Switch language (English / Spanish)

------------------------------------------------------------------------

# 🚀 Getting Started

## Requirements

-   Flutter 3.x
-   Dart 3.x
-   Android Studio or VS Code

## Install dependencies

``` bash
flutter pub get
```

## Run the project

``` bash
flutter run
```

------------------------------------------------------------------------

# 🧩 Development Guide

This project uses code generation for:

-   Freezed (immutable state)
-   Riverpod (annotations)
-   JSON serialization
-   Localization (l10n)

⚠️ After modifying any of these files, you MUST regenerate code.

------------------------------------------------------------------------

## 🔁 Code Generation

Whenever you:

-   Modify a Freezed state
-   Modify a Riverpod annotated provider
-   Modify DTOs using json_serializable
-   Add or edit `.arb` translation files

Run:

``` bash
flutter pub run build_runner build --delete-conflicting-outputs
```

For continuous generation during development:

``` bash
flutter pub run build_runner watch --delete-conflicting-outputs
```

------------------------------------------------------------------------

## 🌍 Localization (i18n)

If you modify any `.arb` file inside:

lib/l10n/

You must regenerate localization files:

``` bash
flutter gen-l10n
```

If the app does not reflect new translation keys, make sure the command
was executed successfully.

------------------------------------------------------------------------

## 🧠 Riverpod Annotations

This project uses `riverpod_generator`.

If you modify:

-   Providers with `@riverpod`
-   Notifiers
-   State classes

You must run build_runner again.

Otherwise, generated files (`*.g.dart`) will be outdated.

------------------------------------------------------------------------

## 🧊 Freezed

When modifying a Freezed state:

-   Update the `.dart` file
-   Run build_runner
-   Do NOT manually edit `.freezed.dart` files

------------------------------------------------------------------------

## 🧼 Common Issues

If something seems broken:

``` bash
flutter clean
flutter pub get
flutter pub run build_runner build --delete-conflicting-outputs
```

------------------------------------------------------------------------

# 🔌 API

The app consumes:

-   GET https://pokeapi.co/api/v2/pokemon
-   GET https://pokeapi.co/api/v2/pokemon/{name}

Only two endpoints are used as requested.

------------------------------------------------------------------------

# 🏗 Architecture Overview

The project follows a Feature-based Clean Architecture approach.

Structure:

features/ pokemon/ data/ domain/ application/ presentation/

-   Domain: Entities and repository contracts
-   Data: API calls (Dio), DTOs, mappers
-   Application: Use cases
-   Presentation: UI, Riverpod providers and notifiers

------------------------------------------------------------------------

# 🤖 AI Usage

AI was used as a productivity assistant for:

-   Reviewing architectural decisions
-   Refactoring UI components
-   Improving state separation
-   Generating localization keys
-   Code cleanup suggestions

All architectural decisions were validated manually.

------------------------------------------------------------------------

# 🔐 Security Considerations

-   No sensitive data stored
-   No credentials hardcoded
-   API consumption is read-only
-   Separation of concerns to reduce coupling

------------------------------------------------------------------------

# 👩‍💻 Author

Ariadna Villagra
