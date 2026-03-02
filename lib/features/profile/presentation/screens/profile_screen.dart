import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokemon_app/l10n/app_localizations.dart';
import '../../../../shared/providers/locale_provider.dart';

class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final currentLocale = ref.watch(localeProvider);

    return Scaffold(
      appBar: AppBar(title: Text(l10n.profileTitle), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),

            /// Profile Info
            Center(
              child: Column(
                children: [
                  const CircleAvatar(
                    radius: 40,
                    child: Icon(Icons.person, size: 40),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    l10n.profileRole,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ],
              ),
            ),

            const SizedBox(height: 40),

            /// Language Section
            Text(
              l10n.languageSection,
              style: Theme.of(context).textTheme.titleLarge,
            ),

            const SizedBox(height: 16),

            ListTile(
              leading: const Icon(Icons.language),
              title: Text(l10n.systemLanguage),
              trailing: currentLocale == null
                  ? const Icon(Icons.check, color: Colors.green)
                  : null,
              onTap: () {
                ref.read(localeProvider.notifier).state = null;
              },
            ),

            ListTile(
              leading: const Icon(Icons.flag),
              title: Text(l10n.languageSpanish),
              trailing: currentLocale?.languageCode == 'es'
                  ? const Icon(Icons.check, color: Colors.green)
                  : null,
              onTap: () {
                ref.read(localeProvider.notifier).state = const Locale('es');
              },
            ),

            ListTile(
              leading: const Icon(Icons.flag),
              title: Text(l10n.languageEnglish),
              trailing: currentLocale?.languageCode == 'en'
                  ? const Icon(Icons.check, color: Colors.green)
                  : null,
              onTap: () {
                ref.read(localeProvider.notifier).state = const Locale('en');
              },
            ),

            const Spacer(),

            /// App Version
            Center(
              child: Text(
                l10n.appVersion("1.0.0"),
                style: Theme.of(
                  context,
                ).textTheme.bodySmall?.copyWith(color: Colors.grey),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
