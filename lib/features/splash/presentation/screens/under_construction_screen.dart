import 'package:flutter/material.dart';
import 'package:pokemon_app/l10n/app_localizations.dart';

class UnderConstructionScreen extends StatelessWidget {
  const UnderConstructionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/underconstruction-image.png'),
            const SizedBox(height: 24),

            Text(
              l10n.underConstructionTitle,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 12),

            Text(
              l10n.underConstructionDescription,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}