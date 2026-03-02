// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$PokemonListState {
  List<Pokemon> get items => throw _privateConstructorUsedError;
  bool get isInitialLoading => throw _privateConstructorUsedError;
  bool get isLoadingMore => throw _privateConstructorUsedError;
  String? get nextUrl => throw _privateConstructorUsedError;
  bool get hasMore => throw _privateConstructorUsedError;

  /// Create a copy of PokemonListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PokemonListStateCopyWith<PokemonListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonListStateCopyWith<$Res> {
  factory $PokemonListStateCopyWith(
    PokemonListState value,
    $Res Function(PokemonListState) then,
  ) = _$PokemonListStateCopyWithImpl<$Res, PokemonListState>;
  @useResult
  $Res call({
    List<Pokemon> items,
    bool isInitialLoading,
    bool isLoadingMore,
    String? nextUrl,
    bool hasMore,
  });
}

/// @nodoc
class _$PokemonListStateCopyWithImpl<$Res, $Val extends PokemonListState>
    implements $PokemonListStateCopyWith<$Res> {
  _$PokemonListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PokemonListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? isInitialLoading = null,
    Object? isLoadingMore = null,
    Object? nextUrl = freezed,
    Object? hasMore = null,
  }) {
    return _then(
      _value.copyWith(
            items: null == items
                ? _value.items
                : items // ignore: cast_nullable_to_non_nullable
                      as List<Pokemon>,
            isInitialLoading: null == isInitialLoading
                ? _value.isInitialLoading
                : isInitialLoading // ignore: cast_nullable_to_non_nullable
                      as bool,
            isLoadingMore: null == isLoadingMore
                ? _value.isLoadingMore
                : isLoadingMore // ignore: cast_nullable_to_non_nullable
                      as bool,
            nextUrl: freezed == nextUrl
                ? _value.nextUrl
                : nextUrl // ignore: cast_nullable_to_non_nullable
                      as String?,
            hasMore: null == hasMore
                ? _value.hasMore
                : hasMore // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PokemonListStateImplCopyWith<$Res>
    implements $PokemonListStateCopyWith<$Res> {
  factory _$$PokemonListStateImplCopyWith(
    _$PokemonListStateImpl value,
    $Res Function(_$PokemonListStateImpl) then,
  ) = __$$PokemonListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    List<Pokemon> items,
    bool isInitialLoading,
    bool isLoadingMore,
    String? nextUrl,
    bool hasMore,
  });
}

/// @nodoc
class __$$PokemonListStateImplCopyWithImpl<$Res>
    extends _$PokemonListStateCopyWithImpl<$Res, _$PokemonListStateImpl>
    implements _$$PokemonListStateImplCopyWith<$Res> {
  __$$PokemonListStateImplCopyWithImpl(
    _$PokemonListStateImpl _value,
    $Res Function(_$PokemonListStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PokemonListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? isInitialLoading = null,
    Object? isLoadingMore = null,
    Object? nextUrl = freezed,
    Object? hasMore = null,
  }) {
    return _then(
      _$PokemonListStateImpl(
        items: null == items
            ? _value._items
            : items // ignore: cast_nullable_to_non_nullable
                  as List<Pokemon>,
        isInitialLoading: null == isInitialLoading
            ? _value.isInitialLoading
            : isInitialLoading // ignore: cast_nullable_to_non_nullable
                  as bool,
        isLoadingMore: null == isLoadingMore
            ? _value.isLoadingMore
            : isLoadingMore // ignore: cast_nullable_to_non_nullable
                  as bool,
        nextUrl: freezed == nextUrl
            ? _value.nextUrl
            : nextUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
        hasMore: null == hasMore
            ? _value.hasMore
            : hasMore // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc

class _$PokemonListStateImpl extends _PokemonListState {
  const _$PokemonListStateImpl({
    final List<Pokemon> items = const [],
    this.isInitialLoading = true,
    this.isLoadingMore = false,
    this.nextUrl,
    this.hasMore = true,
  }) : _items = items,
       super._();

  final List<Pokemon> _items;
  @override
  @JsonKey()
  List<Pokemon> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  @JsonKey()
  final bool isInitialLoading;
  @override
  @JsonKey()
  final bool isLoadingMore;
  @override
  final String? nextUrl;
  @override
  @JsonKey()
  final bool hasMore;

  @override
  String toString() {
    return 'PokemonListState(items: $items, isInitialLoading: $isInitialLoading, isLoadingMore: $isLoadingMore, nextUrl: $nextUrl, hasMore: $hasMore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonListStateImpl &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.isInitialLoading, isInitialLoading) ||
                other.isInitialLoading == isInitialLoading) &&
            (identical(other.isLoadingMore, isLoadingMore) ||
                other.isLoadingMore == isLoadingMore) &&
            (identical(other.nextUrl, nextUrl) || other.nextUrl == nextUrl) &&
            (identical(other.hasMore, hasMore) || other.hasMore == hasMore));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_items),
    isInitialLoading,
    isLoadingMore,
    nextUrl,
    hasMore,
  );

  /// Create a copy of PokemonListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonListStateImplCopyWith<_$PokemonListStateImpl> get copyWith =>
      __$$PokemonListStateImplCopyWithImpl<_$PokemonListStateImpl>(
        this,
        _$identity,
      );
}

abstract class _PokemonListState extends PokemonListState {
  const factory _PokemonListState({
    final List<Pokemon> items,
    final bool isInitialLoading,
    final bool isLoadingMore,
    final String? nextUrl,
    final bool hasMore,
  }) = _$PokemonListStateImpl;
  const _PokemonListState._() : super._();

  @override
  List<Pokemon> get items;
  @override
  bool get isInitialLoading;
  @override
  bool get isLoadingMore;
  @override
  String? get nextUrl;
  @override
  bool get hasMore;

  /// Create a copy of PokemonListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PokemonListStateImplCopyWith<_$PokemonListStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
