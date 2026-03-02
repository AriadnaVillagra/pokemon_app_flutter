import 'package:flutter/material.dart';
import 'package:pokemon_app/features/favorites/presentation/screens/favorite_screen.dart';
import 'package:pokemon_app/features/pokemon/presentation/screens/pokemon_list_screen.dart';
import 'package:pokemon_app/features/profile/presentation/screens/profile_screen.dart';
import 'package:pokemon_app/features/splash/presentation/screens/under_construction_screen.dart';

class MainShellScreen extends StatefulWidget {
  const MainShellScreen({super.key});

  @override
  State<MainShellScreen> createState() => _MainShellScreenState();
}

class _MainShellScreenState extends State<MainShellScreen> {
  int _currentIndex = 0;

  final List<Widget> _pages = const [
    PokemonListScreen(),
    UnderConstructionScreen(),
    FavoriteScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.catching_pokemon),
            label: 'Pokedex',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.language),
            label: 'Regiones',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'favoritos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Perfil',
          ),
        ],
      ),
    );
  }
}