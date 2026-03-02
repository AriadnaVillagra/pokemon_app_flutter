import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokemon_app/features/pokemon/presentation/notifiers/pokemon_filter_notifier.dart';
import 'package:pokemon_app/l10n/app_localizations.dart';
import 'package:pokemon_app/shared/components/action_buttons.dart';

class PokemonFilterBottomSheet extends ConsumerStatefulWidget {
  const PokemonFilterBottomSheet({super.key});

  @override
  ConsumerState<PokemonFilterBottomSheet> createState() =>
      _PokemonFilterBottomSheetState();
}

class _PokemonFilterBottomSheetState
    extends ConsumerState<PokemonFilterBottomSheet> {
  final List<String> allTypes = [
    'fire',
    'water',
    'grass',
    'electric',
    'psychic',
    'rock',
    'ghost',
  ];

  late Set<String> selectedTypes;
  bool isExpanded = false;

  @override
  void initState() {
    super.initState();
    final currentFilters = ref
        .read(pokemonFilterNotifierProvider)
        .selectedTypes;

    selectedTypes = {...currentFilters};
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Padding(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
        left: 16,
        right: 16,
        top: 16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: const Icon(Icons.close, size: 30),
            ),
          ),
          Text(
            l10n.filterTitle,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          ExpansionTile(
            shape: const Border(),
            collapsedShape: const Border(),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  selectedTypes.isEmpty
                      ? l10n.filterType
                      : selectedTypes
                            .map((e) => e[0].toUpperCase() + e.substring(1))
                            .join(", "),
                  style: const TextStyle(fontSize: 16),
                ),
              ],
            ),
            children: allTypes.map((type) {
              final isSelected = selectedTypes.contains(type);
              return CheckboxListTile(
                side: const BorderSide(color: Colors.grey, width: 1.5),
                checkboxShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
                activeColor: Color(0xFF0D47A1),
                dense: true,
                visualDensity: VisualDensity.compact,
                contentPadding: EdgeInsets.symmetric(horizontal: 20),
                value: isSelected,
                title: Text(_translateType(type, l10n)),
                controlAffinity: ListTileControlAffinity.trailing,
                onChanged: (checked) {
                  setState(() {
                    if (checked == true) {
                      selectedTypes.add(type);
                    } else {
                      selectedTypes.remove(type);
                    }
                  });
                },
              );
            }).toList(),
          ),
          const Divider(height: 24),
          SizedBox(
            width: double.infinity,
            child: ActionButtons(
              acceptBackgroundColor: Color(0xFF1E88E5),
              acceptTextColor: Colors.white,
              cancelTextColor: Colors.black,
              cancelBackgroundColor: const Color.fromARGB(255, 224, 221, 221),
              acceptText: l10n.apply,
              cancelText: l10n.cancel,
              onAccept: () {
                ref
                    .read(pokemonFilterNotifierProvider.notifier)
                    .updateTypes(selectedTypes);

                Navigator.pop(context);
              },
              onCancel: () {
                selectedTypes = {
                  ...ref.read(pokemonFilterNotifierProvider).selectedTypes,
                };
                Navigator.pop(context);
              },
            ),
          ),

          const SizedBox(height: 16),
        ],
      ),
    );
  }

  String _translateType(String type, AppLocalizations l10n) {
    switch (type) {
      case 'fire':
        return l10n.type_fire;
      case 'water':
        return l10n.type_water;
      case 'grass':
        return l10n.type_grass;
      case 'electric':
        return l10n.type_electric;
      case 'psychic':
        return l10n.type_psychic;
      case 'rock':
        return l10n.type_rock;
      case 'ghost':
        return l10n.type_ghost;
      default:
        return type;
    }
  }
}
