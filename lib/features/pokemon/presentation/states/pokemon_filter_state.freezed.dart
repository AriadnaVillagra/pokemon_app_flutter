// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_filter_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$PokemonFilterState {
  String get searchQuery => throw _privateConstructorUsedError;
  Set<String> get selectedTypes => throw _privateConstructorUsedError;
  String? get selectedCategory => throw _privateConstructorUsedError;
  List<String> get selectedValues => throw _privateConstructorUsedError;

  /// Create a copy of PokemonFilterState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PokemonFilterStateCopyWith<PokemonFilterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonFilterStateCopyWith<$Res> {
  factory $PokemonFilterStateCopyWith(
    PokemonFilterState value,
    $Res Function(PokemonFilterState) then,
  ) = _$PokemonFilterStateCopyWithImpl<$Res, PokemonFilterState>;
  @useResult
  $Res call({
    String searchQuery,
    Set<String> selectedTypes,
    String? selectedCategory,
    List<String> selectedValues,
  });
}

/// @nodoc
class _$PokemonFilterStateCopyWithImpl<$Res, $Val extends PokemonFilterState>
    implements $PokemonFilterStateCopyWith<$Res> {
  _$PokemonFilterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PokemonFilterState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchQuery = null,
    Object? selectedTypes = null,
    Object? selectedCategory = freezed,
    Object? selectedValues = null,
  }) {
    return _then(
      _value.copyWith(
            searchQuery: null == searchQuery
                ? _value.searchQuery
                : searchQuery // ignore: cast_nullable_to_non_nullable
                      as String,
            selectedTypes: null == selectedTypes
                ? _value.selectedTypes
                : selectedTypes // ignore: cast_nullable_to_non_nullable
                      as Set<String>,
            selectedCategory: freezed == selectedCategory
                ? _value.selectedCategory
                : selectedCategory // ignore: cast_nullable_to_non_nullable
                      as String?,
            selectedValues: null == selectedValues
                ? _value.selectedValues
                : selectedValues // ignore: cast_nullable_to_non_nullable
                      as List<String>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PokemonFilterStateImplCopyWith<$Res>
    implements $PokemonFilterStateCopyWith<$Res> {
  factory _$$PokemonFilterStateImplCopyWith(
    _$PokemonFilterStateImpl value,
    $Res Function(_$PokemonFilterStateImpl) then,
  ) = __$$PokemonFilterStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String searchQuery,
    Set<String> selectedTypes,
    String? selectedCategory,
    List<String> selectedValues,
  });
}

/// @nodoc
class __$$PokemonFilterStateImplCopyWithImpl<$Res>
    extends _$PokemonFilterStateCopyWithImpl<$Res, _$PokemonFilterStateImpl>
    implements _$$PokemonFilterStateImplCopyWith<$Res> {
  __$$PokemonFilterStateImplCopyWithImpl(
    _$PokemonFilterStateImpl _value,
    $Res Function(_$PokemonFilterStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PokemonFilterState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchQuery = null,
    Object? selectedTypes = null,
    Object? selectedCategory = freezed,
    Object? selectedValues = null,
  }) {
    return _then(
      _$PokemonFilterStateImpl(
        searchQuery: null == searchQuery
            ? _value.searchQuery
            : searchQuery // ignore: cast_nullable_to_non_nullable
                  as String,
        selectedTypes: null == selectedTypes
            ? _value._selectedTypes
            : selectedTypes // ignore: cast_nullable_to_non_nullable
                  as Set<String>,
        selectedCategory: freezed == selectedCategory
            ? _value.selectedCategory
            : selectedCategory // ignore: cast_nullable_to_non_nullable
                  as String?,
        selectedValues: null == selectedValues
            ? _value._selectedValues
            : selectedValues // ignore: cast_nullable_to_non_nullable
                  as List<String>,
      ),
    );
  }
}

/// @nodoc

class _$PokemonFilterStateImpl extends _PokemonFilterState {
  const _$PokemonFilterStateImpl({
    this.searchQuery = '',
    final Set<String> selectedTypes = const <String>{},
    this.selectedCategory,
    final List<String> selectedValues = const [],
  }) : _selectedTypes = selectedTypes,
       _selectedValues = selectedValues,
       super._();

  @override
  @JsonKey()
  final String searchQuery;
  final Set<String> _selectedTypes;
  @override
  @JsonKey()
  Set<String> get selectedTypes {
    if (_selectedTypes is EqualUnmodifiableSetView) return _selectedTypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_selectedTypes);
  }

  @override
  final String? selectedCategory;
  final List<String> _selectedValues;
  @override
  @JsonKey()
  List<String> get selectedValues {
    if (_selectedValues is EqualUnmodifiableListView) return _selectedValues;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedValues);
  }

  @override
  String toString() {
    return 'PokemonFilterState(searchQuery: $searchQuery, selectedTypes: $selectedTypes, selectedCategory: $selectedCategory, selectedValues: $selectedValues)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonFilterStateImpl &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery) &&
            const DeepCollectionEquality().equals(
              other._selectedTypes,
              _selectedTypes,
            ) &&
            (identical(other.selectedCategory, selectedCategory) ||
                other.selectedCategory == selectedCategory) &&
            const DeepCollectionEquality().equals(
              other._selectedValues,
              _selectedValues,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    searchQuery,
    const DeepCollectionEquality().hash(_selectedTypes),
    selectedCategory,
    const DeepCollectionEquality().hash(_selectedValues),
  );

  /// Create a copy of PokemonFilterState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonFilterStateImplCopyWith<_$PokemonFilterStateImpl> get copyWith =>
      __$$PokemonFilterStateImplCopyWithImpl<_$PokemonFilterStateImpl>(
        this,
        _$identity,
      );
}

abstract class _PokemonFilterState extends PokemonFilterState {
  const factory _PokemonFilterState({
    final String searchQuery,
    final Set<String> selectedTypes,
    final String? selectedCategory,
    final List<String> selectedValues,
  }) = _$PokemonFilterStateImpl;
  const _PokemonFilterState._() : super._();

  @override
  String get searchQuery;
  @override
  Set<String> get selectedTypes;
  @override
  String? get selectedCategory;
  @override
  List<String> get selectedValues;

  /// Create a copy of PokemonFilterState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PokemonFilterStateImplCopyWith<_$PokemonFilterStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
