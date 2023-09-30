// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'spend_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SpendState {
  List<Spend> get spends => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Spend> spends) initial,
    required TResult Function(List<Spend> spends) loading,
    required TResult Function(List<Spend> spends, bool isNextPageAvailable)
        success,
    required TResult Function(List<Spend> spends, DataFailure failure) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Spend> spends)? initial,
    TResult? Function(List<Spend> spends)? loading,
    TResult? Function(List<Spend> spends, bool isNextPageAvailable)? success,
    TResult? Function(List<Spend> spends, DataFailure failure)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Spend> spends)? initial,
    TResult Function(List<Spend> spends)? loading,
    TResult Function(List<Spend> spends, bool isNextPageAvailable)? success,
    TResult Function(List<Spend> spends, DataFailure failure)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SpendStateCopyWith<SpendState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpendStateCopyWith<$Res> {
  factory $SpendStateCopyWith(
          SpendState value, $Res Function(SpendState) then) =
      _$SpendStateCopyWithImpl<$Res, SpendState>;
  @useResult
  $Res call({List<Spend> spends});
}

/// @nodoc
class _$SpendStateCopyWithImpl<$Res, $Val extends SpendState>
    implements $SpendStateCopyWith<$Res> {
  _$SpendStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? spends = null,
  }) {
    return _then(_value.copyWith(
      spends: null == spends
          ? _value.spends
          : spends // ignore: cast_nullable_to_non_nullable
              as List<Spend>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> implements $SpendStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Spend> spends});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$SpendStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? spends = null,
  }) {
    return _then(_$_Initial(
      null == spends
          ? _value._spends
          : spends // ignore: cast_nullable_to_non_nullable
              as List<Spend>,
    ));
  }
}

/// @nodoc

class _$_Initial extends _Initial {
  const _$_Initial(final List<Spend> spends)
      : _spends = spends,
        super._();

  final List<Spend> _spends;
  @override
  List<Spend> get spends {
    if (_spends is EqualUnmodifiableListView) return _spends;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_spends);
  }

  @override
  String toString() {
    return 'SpendState.initial(spends: $spends)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            const DeepCollectionEquality().equals(other._spends, _spends));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_spends));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Spend> spends) initial,
    required TResult Function(List<Spend> spends) loading,
    required TResult Function(List<Spend> spends, bool isNextPageAvailable)
        success,
    required TResult Function(List<Spend> spends, DataFailure failure) failure,
  }) {
    return initial(spends);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Spend> spends)? initial,
    TResult? Function(List<Spend> spends)? loading,
    TResult? Function(List<Spend> spends, bool isNextPageAvailable)? success,
    TResult? Function(List<Spend> spends, DataFailure failure)? failure,
  }) {
    return initial?.call(spends);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Spend> spends)? initial,
    TResult Function(List<Spend> spends)? loading,
    TResult Function(List<Spend> spends, bool isNextPageAvailable)? success,
    TResult Function(List<Spend> spends, DataFailure failure)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(spends);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial extends SpendState {
  const factory _Initial(final List<Spend> spends) = _$_Initial;
  const _Initial._() : super._();

  @override
  List<Spend> get spends;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> implements $SpendStateCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Spend> spends});
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$SpendStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? spends = null,
  }) {
    return _then(_$_Loading(
      null == spends
          ? _value._spends
          : spends // ignore: cast_nullable_to_non_nullable
              as List<Spend>,
    ));
  }
}

/// @nodoc

class _$_Loading extends _Loading {
  const _$_Loading(final List<Spend> spends)
      : _spends = spends,
        super._();

  final List<Spend> _spends;
  @override
  List<Spend> get spends {
    if (_spends is EqualUnmodifiableListView) return _spends;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_spends);
  }

  @override
  String toString() {
    return 'SpendState.loading(spends: $spends)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loading &&
            const DeepCollectionEquality().equals(other._spends, _spends));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_spends));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      __$$_LoadingCopyWithImpl<_$_Loading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Spend> spends) initial,
    required TResult Function(List<Spend> spends) loading,
    required TResult Function(List<Spend> spends, bool isNextPageAvailable)
        success,
    required TResult Function(List<Spend> spends, DataFailure failure) failure,
  }) {
    return loading(spends);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Spend> spends)? initial,
    TResult? Function(List<Spend> spends)? loading,
    TResult? Function(List<Spend> spends, bool isNextPageAvailable)? success,
    TResult? Function(List<Spend> spends, DataFailure failure)? failure,
  }) {
    return loading?.call(spends);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Spend> spends)? initial,
    TResult Function(List<Spend> spends)? loading,
    TResult Function(List<Spend> spends, bool isNextPageAvailable)? success,
    TResult Function(List<Spend> spends, DataFailure failure)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(spends);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading extends SpendState {
  const factory _Loading(final List<Spend> spends) = _$_Loading;
  const _Loading._() : super._();

  @override
  List<Spend> get spends;
  @override
  @JsonKey(ignore: true)
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SuccessCopyWith<$Res> implements $SpendStateCopyWith<$Res> {
  factory _$$_SuccessCopyWith(
          _$_Success value, $Res Function(_$_Success) then) =
      __$$_SuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Spend> spends, bool isNextPageAvailable});
}

/// @nodoc
class __$$_SuccessCopyWithImpl<$Res>
    extends _$SpendStateCopyWithImpl<$Res, _$_Success>
    implements _$$_SuccessCopyWith<$Res> {
  __$$_SuccessCopyWithImpl(_$_Success _value, $Res Function(_$_Success) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? spends = null,
    Object? isNextPageAvailable = null,
  }) {
    return _then(_$_Success(
      null == spends
          ? _value._spends
          : spends // ignore: cast_nullable_to_non_nullable
              as List<Spend>,
      isNextPageAvailable: null == isNextPageAvailable
          ? _value.isNextPageAvailable
          : isNextPageAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Success extends _Success {
  const _$_Success(final List<Spend> spends,
      {required this.isNextPageAvailable})
      : _spends = spends,
        super._();

  final List<Spend> _spends;
  @override
  List<Spend> get spends {
    if (_spends is EqualUnmodifiableListView) return _spends;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_spends);
  }

  @override
  final bool isNextPageAvailable;

  @override
  String toString() {
    return 'SpendState.success(spends: $spends, isNextPageAvailable: $isNextPageAvailable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Success &&
            const DeepCollectionEquality().equals(other._spends, _spends) &&
            (identical(other.isNextPageAvailable, isNextPageAvailable) ||
                other.isNextPageAvailable == isNextPageAvailable));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_spends), isNextPageAvailable);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SuccessCopyWith<_$_Success> get copyWith =>
      __$$_SuccessCopyWithImpl<_$_Success>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Spend> spends) initial,
    required TResult Function(List<Spend> spends) loading,
    required TResult Function(List<Spend> spends, bool isNextPageAvailable)
        success,
    required TResult Function(List<Spend> spends, DataFailure failure) failure,
  }) {
    return success(spends, isNextPageAvailable);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Spend> spends)? initial,
    TResult? Function(List<Spend> spends)? loading,
    TResult? Function(List<Spend> spends, bool isNextPageAvailable)? success,
    TResult? Function(List<Spend> spends, DataFailure failure)? failure,
  }) {
    return success?.call(spends, isNextPageAvailable);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Spend> spends)? initial,
    TResult Function(List<Spend> spends)? loading,
    TResult Function(List<Spend> spends, bool isNextPageAvailable)? success,
    TResult Function(List<Spend> spends, DataFailure failure)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(spends, isNextPageAvailable);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success extends SpendState {
  const factory _Success(final List<Spend> spends,
      {required final bool isNextPageAvailable}) = _$_Success;
  const _Success._() : super._();

  @override
  List<Spend> get spends;
  bool get isNextPageAvailable;
  @override
  @JsonKey(ignore: true)
  _$$_SuccessCopyWith<_$_Success> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FailureCopyWith<$Res> implements $SpendStateCopyWith<$Res> {
  factory _$$_FailureCopyWith(
          _$_Failure value, $Res Function(_$_Failure) then) =
      __$$_FailureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Spend> spends, DataFailure failure});

  $DataFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$_FailureCopyWithImpl<$Res>
    extends _$SpendStateCopyWithImpl<$Res, _$_Failure>
    implements _$$_FailureCopyWith<$Res> {
  __$$_FailureCopyWithImpl(_$_Failure _value, $Res Function(_$_Failure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? spends = null,
    Object? failure = null,
  }) {
    return _then(_$_Failure(
      null == spends
          ? _value._spends
          : spends // ignore: cast_nullable_to_non_nullable
              as List<Spend>,
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as DataFailure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $DataFailureCopyWith<$Res> get failure {
    return $DataFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_Failure extends _Failure {
  const _$_Failure(final List<Spend> spends, this.failure)
      : _spends = spends,
        super._();

  final List<Spend> _spends;
  @override
  List<Spend> get spends {
    if (_spends is EqualUnmodifiableListView) return _spends;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_spends);
  }

  @override
  final DataFailure failure;

  @override
  String toString() {
    return 'SpendState.failure(spends: $spends, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Failure &&
            const DeepCollectionEquality().equals(other._spends, _spends) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_spends), failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FailureCopyWith<_$_Failure> get copyWith =>
      __$$_FailureCopyWithImpl<_$_Failure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Spend> spends) initial,
    required TResult Function(List<Spend> spends) loading,
    required TResult Function(List<Spend> spends, bool isNextPageAvailable)
        success,
    required TResult Function(List<Spend> spends, DataFailure failure) failure,
  }) {
    return failure(spends, this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Spend> spends)? initial,
    TResult? Function(List<Spend> spends)? loading,
    TResult? Function(List<Spend> spends, bool isNextPageAvailable)? success,
    TResult? Function(List<Spend> spends, DataFailure failure)? failure,
  }) {
    return failure?.call(spends, this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Spend> spends)? initial,
    TResult Function(List<Spend> spends)? loading,
    TResult Function(List<Spend> spends, bool isNextPageAvailable)? success,
    TResult Function(List<Spend> spends, DataFailure failure)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(spends, this.failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure extends SpendState {
  const factory _Failure(final List<Spend> spends, final DataFailure failure) =
      _$_Failure;
  const _Failure._() : super._();

  @override
  List<Spend> get spends;
  DataFailure get failure;
  @override
  @JsonKey(ignore: true)
  _$$_FailureCopyWith<_$_Failure> get copyWith =>
      throw _privateConstructorUsedError;
}
