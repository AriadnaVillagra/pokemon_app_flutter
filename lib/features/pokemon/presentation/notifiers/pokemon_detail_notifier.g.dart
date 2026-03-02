// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_detail_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$pokemonDetailNotifierHash() =>
    r'ab13400e5919dcb23948a08074b04f62deccedeb';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$PokemonDetailNotifier
    extends BuildlessAutoDisposeNotifier<PokemonDetailState> {
  late final String pokemonName;

  PokemonDetailState build(String pokemonName);
}

/// See also [PokemonDetailNotifier].
@ProviderFor(PokemonDetailNotifier)
const pokemonDetailNotifierProvider = PokemonDetailNotifierFamily();

/// See also [PokemonDetailNotifier].
class PokemonDetailNotifierFamily extends Family<PokemonDetailState> {
  /// See also [PokemonDetailNotifier].
  const PokemonDetailNotifierFamily();

  /// See also [PokemonDetailNotifier].
  PokemonDetailNotifierProvider call(String pokemonName) {
    return PokemonDetailNotifierProvider(pokemonName);
  }

  @override
  PokemonDetailNotifierProvider getProviderOverride(
    covariant PokemonDetailNotifierProvider provider,
  ) {
    return call(provider.pokemonName);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'pokemonDetailNotifierProvider';
}

/// See also [PokemonDetailNotifier].
class PokemonDetailNotifierProvider
    extends
        AutoDisposeNotifierProviderImpl<
          PokemonDetailNotifier,
          PokemonDetailState
        > {
  /// See also [PokemonDetailNotifier].
  PokemonDetailNotifierProvider(String pokemonName)
    : this._internal(
        () => PokemonDetailNotifier()..pokemonName = pokemonName,
        from: pokemonDetailNotifierProvider,
        name: r'pokemonDetailNotifierProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$pokemonDetailNotifierHash,
        dependencies: PokemonDetailNotifierFamily._dependencies,
        allTransitiveDependencies:
            PokemonDetailNotifierFamily._allTransitiveDependencies,
        pokemonName: pokemonName,
      );

  PokemonDetailNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.pokemonName,
  }) : super.internal();

  final String pokemonName;

  @override
  PokemonDetailState runNotifierBuild(
    covariant PokemonDetailNotifier notifier,
  ) {
    return notifier.build(pokemonName);
  }

  @override
  Override overrideWith(PokemonDetailNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: PokemonDetailNotifierProvider._internal(
        () => create()..pokemonName = pokemonName,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        pokemonName: pokemonName,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<PokemonDetailNotifier, PokemonDetailState>
  createElement() {
    return _PokemonDetailNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PokemonDetailNotifierProvider &&
        other.pokemonName == pokemonName;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, pokemonName.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin PokemonDetailNotifierRef
    on AutoDisposeNotifierProviderRef<PokemonDetailState> {
  /// The parameter `pokemonName` of this provider.
  String get pokemonName;
}

class _PokemonDetailNotifierProviderElement
    extends
        AutoDisposeNotifierProviderElement<
          PokemonDetailNotifier,
          PokemonDetailState
        >
    with PokemonDetailNotifierRef {
  _PokemonDetailNotifierProviderElement(super.provider);

  @override
  String get pokemonName =>
      (origin as PokemonDetailNotifierProvider).pokemonName;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
