import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokemon_app/features/pokemon/presentation/components/pokemon_filter_bottom_sheet.dart';
import 'package:pokemon_app/l10n/app_localizations.dart';
import '../notifiers/pokemon_filter_notifier.dart';

class PokemonListAppBar extends ConsumerStatefulWidget
    implements PreferredSizeWidget {
  const PokemonListAppBar({super.key});

  @override
  ConsumerState<PokemonListAppBar> createState() => _PokemonListAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(100);
}

class _PokemonListAppBarState extends ConsumerState<PokemonListAppBar> {
  Timer? _debounce;
  late final TextEditingController _controller;

  void _onSearchChanged(String value) {
    if (_debounce?.isActive ?? false) {
      _debounce!.cancel();
    }

    _debounce = Timer(const Duration(milliseconds: 300), () {
      ref.read(pokemonFilterNotifierProvider.notifier).updateSearch(value);
    });
  }

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _debounce?.cancel();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final filterState = ref.watch(pokemonFilterNotifierProvider);
    final l10n = AppLocalizations.of(context)!;

    return AppBar(
      toolbarHeight: 100,
      titleSpacing: 0,
      title: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          children: [
            Expanded(
              child: TextField(
                onChanged: _onSearchChanged,
                controller: _controller,
                decoration: InputDecoration(
                  hintText: l10n.searchPokemonHint,
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(24),
                    borderSide: BorderSide.none,
                  ),
                  prefixIcon: const Icon(Icons.search),
                  suffixIcon: filterState.searchQuery.isNotEmpty
                      ? IconButton(
                          icon: const Icon(Icons.close),
                          onPressed: () {
                            _controller.clear();
                            ref
                                .read(pokemonFilterNotifierProvider.notifier)
                                .updateSearch('');
                          },
                        )
                      : null,
                ),
              ),
            ),
            const SizedBox(width: 8),
            IconButton(
              icon: const Icon(Icons.filter_list),
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(24),
                    ),
                  ),
                  builder: (_) => const PokemonFilterBottomSheet(),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
