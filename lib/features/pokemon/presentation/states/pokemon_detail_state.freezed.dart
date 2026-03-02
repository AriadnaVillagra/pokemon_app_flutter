// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_detail_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$PokemonDetailState {
  PokemonDetail? get data => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  /// Create a copy of PokemonDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PokemonDetailStateCopyWith<PokemonDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonDetailStateCopyWith<$Res> {
  factory $PokemonDetailStateCopyWith(
    PokemonDetailState value,
    $Res Function(PokemonDetailState) then,
  ) = _$PokemonDetailStateCopyWithImpl<$Res, PokemonDetailState>;
  @useResult
  $Res call({PokemonDetail? data, bool isLoading, String? error});
}

/// @nodoc
class _$PokemonDetailStateCopyWithImpl<$Res, $Val extends PokemonDetailState>
    implements $PokemonDetailStateCopyWith<$Res> {
  _$PokemonDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PokemonDetailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? isLoading = null,
    Object? error = freezed,
  }) {
    return _then(
      _value.copyWith(
            data: freezed == data
                ? _value.data
                : data // ignore: cast_nullable_to_non_nullable
                      as PokemonDetail?,
            isLoading: null == isLoading
                ? _value.isLoading
                : isLoading // ignore: cast_nullable_to_non_nullable
                      as bool,
            error: freezed == error
                ? _value.error
                : error // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PokemonDetailStateImplCopyWith<$Res>
    implements $PokemonDetailStateCopyWith<$Res> {
  factory _$$PokemonDetailStateImplCopyWith(
    _$PokemonDetailStateImpl value,
    $Res Function(_$PokemonDetailStateImpl) then,
  ) = __$$PokemonDetailStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PokemonDetail? data, bool isLoading, String? error});
}

/// @nodoc
class __$$PokemonDetailStateImplCopyWithImpl<$Res>
    extends _$PokemonDetailStateCopyWithImpl<$Res, _$PokemonDetailStateImpl>
    implements _$$PokemonDetailStateImplCopyWith<$Res> {
  __$$PokemonDetailStateImplCopyWithImpl(
    _$PokemonDetailStateImpl _value,
    $Res Function(_$PokemonDetailStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PokemonDetailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? isLoading = null,
    Object? error = freezed,
  }) {
    return _then(
      _$PokemonDetailStateImpl(
        data: freezed == data
            ? _value.data
            : data // ignore: cast_nullable_to_non_nullable
                  as PokemonDetail?,
        isLoading: null == isLoading
            ? _value.isLoading
            : isLoading // ignore: cast_nullable_to_non_nullable
                  as bool,
        error: freezed == error
            ? _value.error
            : error // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$PokemonDetailStateImpl extends _PokemonDetailState {
  const _$PokemonDetailStateImpl({this.data, this.isLoading = true, this.error})
    : super._();

  @override
  final PokemonDetail? data;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? error;

  @override
  String toString() {
    return 'PokemonDetailState(data: $data, isLoading: $isLoading, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonDetailStateImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, isLoading, error);

  /// Create a copy of PokemonDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonDetailStateImplCopyWith<_$PokemonDetailStateImpl> get copyWith =>
      __$$PokemonDetailStateImplCopyWithImpl<_$PokemonDetailStateImpl>(
        this,
        _$identity,
      );
}

abstract class _PokemonDetailState extends PokemonDetailState {
  const factory _PokemonDetailState({
    final PokemonDetail? data,
    final bool isLoading,
    final String? error,
  }) = _$PokemonDetailStateImpl;
  const _PokemonDetailState._() : super._();

  @override
  PokemonDetail? get data;
  @override
  bool get isLoading;
  @override
  String? get error;

  /// Create a copy of PokemonDetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PokemonDetailStateImplCopyWith<_$PokemonDetailStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
