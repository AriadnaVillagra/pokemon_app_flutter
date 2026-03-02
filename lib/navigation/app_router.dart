import 'package:flutter/material.dart';
import 'package:pokemon_app/features/pokemon/presentation/screens/main_shell_screen.dart';
import 'package:pokemon_app/features/pokemon/presentation/screens/pokemon_detail_screen.dart';
import 'package:pokemon_app/features/splash/presentation/screens/not_found_screen.dart';
import '../features/splash/presentation/screens/splash_screen.dart';
import '../features/onboarding/presentation/screens/onboarding_screen.dart';
import 'routes.dart';

class AppRouter {
  static Route<dynamic> generate(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.splash:
        return MaterialPageRoute(builder: (_) => const SplashScreen());

      case AppRoutes.onboarding:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());

      case AppRoutes.main:
        return MaterialPageRoute(builder: (_) => const MainShellScreen());

      case AppRoutes.pokemonDetail:
        return MaterialPageRoute(
          builder: (_) =>
              PokemonDetailScreen(pokemonName: settings.arguments as String),
        );

      default:
        return MaterialPageRoute(builder: (_) => const NotFoundScreen());
    }
  }
}
