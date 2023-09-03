// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pocket_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PocketState {
  List<Pocket> get pockets => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Pocket> pockets) initial,
    required TResult Function(List<Pocket> pockets, String balanceInfo) loading,
    required TResult Function(
            List<Pocket> pockets, String balanceInfo, bool isNextPageAvailable)
        success,
    required TResult Function(List<Pocket> pockets, DataFailure failure)
        failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Pocket> pockets)? initial,
    TResult? Function(List<Pocket> pockets, String balanceInfo)? loading,
    TResult? Function(
            List<Pocket> pockets, String balanceInfo, bool isNextPageAvailable)?
        success,
    TResult? Function(List<Pocket> pockets, DataFailure failure)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Pocket> pockets)? initial,
    TResult Function(List<Pocket> pockets, String balanceInfo)? loading,
    TResult Function(
            List<Pocket> pockets, String balanceInfo, bool isNextPageAvailable)?
        success,
    TResult Function(List<Pocket> pockets, DataFailure failure)? failure,
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
  $PocketStateCopyWith<PocketState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PocketStateCopyWith<$Res> {
  factory $PocketStateCopyWith(
          PocketState value, $Res Function(PocketState) then) =
      _$PocketStateCopyWithImpl<$Res, PocketState>;
  @useResult
  $Res call({List<Pocket> pockets});
}

/// @nodoc
class _$PocketStateCopyWithImpl<$Res, $Val extends PocketState>
    implements $PocketStateCopyWith<$Res> {
  _$PocketStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pockets = null,
  }) {
    return _then(_value.copyWith(
      pockets: null == pockets
          ? _value.pockets
          : pockets // ignore: cast_nullable_to_non_nullable
              as List<Pocket>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> implements $PocketStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Pocket> pockets});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$PocketStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pockets = null,
  }) {
    return _then(_$_Initial(
      null == pockets
          ? _value._pockets
          : pockets // ignore: cast_nullable_to_non_nullable
              as List<Pocket>,
    ));
  }
}

/// @nodoc

class _$_Initial extends _Initial {
  const _$_Initial(final List<Pocket> pockets)
      : _pockets = pockets,
        super._();

  final List<Pocket> _pockets;
  @override
  List<Pocket> get pockets {
    if (_pockets is EqualUnmodifiableListView) return _pockets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pockets);
  }

  @override
  String toString() {
    return 'PocketState.initial(pockets: $pockets)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            const DeepCollectionEquality().equals(other._pockets, _pockets));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_pockets));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Pocket> pockets) initial,
    required TResult Function(List<Pocket> pockets, String balanceInfo) loading,
    required TResult Function(
            List<Pocket> pockets, String balanceInfo, bool isNextPageAvailable)
        success,
    required TResult Function(List<Pocket> pockets, DataFailure failure)
        failure,
  }) {
    return initial(pockets);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Pocket> pockets)? initial,
    TResult? Function(List<Pocket> pockets, String balanceInfo)? loading,
    TResult? Function(
            List<Pocket> pockets, String balanceInfo, bool isNextPageAvailable)?
        success,
    TResult? Function(List<Pocket> pockets, DataFailure failure)? failure,
  }) {
    return initial?.call(pockets);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Pocket> pockets)? initial,
    TResult Function(List<Pocket> pockets, String balanceInfo)? loading,
    TResult Function(
            List<Pocket> pockets, String balanceInfo, bool isNextPageAvailable)?
        success,
    TResult Function(List<Pocket> pockets, DataFailure failure)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(pockets);
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

abstract class _Initial extends PocketState {
  const factory _Initial(final List<Pocket> pockets) = _$_Initial;
  const _Initial._() : super._();

  @override
  List<Pocket> get pockets;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> implements $PocketStateCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Pocket> pockets, String balanceInfo});
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$PocketStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pockets = null,
    Object? balanceInfo = null,
  }) {
    return _then(_$_Loading(
      null == pockets
          ? _value._pockets
          : pockets // ignore: cast_nullable_to_non_nullable
              as List<Pocket>,
      null == balanceInfo
          ? _value.balanceInfo
          : balanceInfo // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Loading extends _Loading {
  const _$_Loading(final List<Pocket> pockets, this.balanceInfo)
      : _pockets = pockets,
        super._();

  final List<Pocket> _pockets;
  @override
  List<Pocket> get pockets {
    if (_pockets is EqualUnmodifiableListView) return _pockets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pockets);
  }

  @override
  final String balanceInfo;

  @override
  String toString() {
    return 'PocketState.loading(pockets: $pockets, balanceInfo: $balanceInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loading &&
            const DeepCollectionEquality().equals(other._pockets, _pockets) &&
            (identical(other.balanceInfo, balanceInfo) ||
                other.balanceInfo == balanceInfo));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_pockets), balanceInfo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      __$$_LoadingCopyWithImpl<_$_Loading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Pocket> pockets) initial,
    required TResult Function(List<Pocket> pockets, String balanceInfo) loading,
    required TResult Function(
            List<Pocket> pockets, String balanceInfo, bool isNextPageAvailable)
        success,
    required TResult Function(List<Pocket> pockets, DataFailure failure)
        failure,
  }) {
    return loading(pockets, balanceInfo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Pocket> pockets)? initial,
    TResult? Function(List<Pocket> pockets, String balanceInfo)? loading,
    TResult? Function(
            List<Pocket> pockets, String balanceInfo, bool isNextPageAvailable)?
        success,
    TResult? Function(List<Pocket> pockets, DataFailure failure)? failure,
  }) {
    return loading?.call(pockets, balanceInfo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Pocket> pockets)? initial,
    TResult Function(List<Pocket> pockets, String balanceInfo)? loading,
    TResult Function(
            List<Pocket> pockets, String balanceInfo, bool isNextPageAvailable)?
        success,
    TResult Function(List<Pocket> pockets, DataFailure failure)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(pockets, balanceInfo);
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

abstract class _Loading extends PocketState {
  const factory _Loading(final List<Pocket> pockets, final String balanceInfo) =
      _$_Loading;
  const _Loading._() : super._();

  @override
  List<Pocket> get pockets;
  String get balanceInfo;
  @override
  @JsonKey(ignore: true)
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SuccessCopyWith<$Res> implements $PocketStateCopyWith<$Res> {
  factory _$$_SuccessCopyWith(
          _$_Success value, $Res Function(_$_Success) then) =
      __$$_SuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Pocket> pockets, String balanceInfo, bool isNextPageAvailable});
}

/// @nodoc
class __$$_SuccessCopyWithImpl<$Res>
    extends _$PocketStateCopyWithImpl<$Res, _$_Success>
    implements _$$_SuccessCopyWith<$Res> {
  __$$_SuccessCopyWithImpl(_$_Success _value, $Res Function(_$_Success) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pockets = null,
    Object? balanceInfo = null,
    Object? isNextPageAvailable = null,
  }) {
    return _then(_$_Success(
      null == pockets
          ? _value._pockets
          : pockets // ignore: cast_nullable_to_non_nullable
              as List<Pocket>,
      null == balanceInfo
          ? _value.balanceInfo
          : balanceInfo // ignore: cast_nullable_to_non_nullable
              as String,
      isNextPageAvailable: null == isNextPageAvailable
          ? _value.isNextPageAvailable
          : isNextPageAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Success extends _Success {
  const _$_Success(final List<Pocket> pockets, this.balanceInfo,
      {required this.isNextPageAvailable})
      : _pockets = pockets,
        super._();

  final List<Pocket> _pockets;
  @override
  List<Pocket> get pockets {
    if (_pockets is EqualUnmodifiableListView) return _pockets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pockets);
  }

  @override
  final String balanceInfo;
  @override
  final bool isNextPageAvailable;

  @override
  String toString() {
    return 'PocketState.success(pockets: $pockets, balanceInfo: $balanceInfo, isNextPageAvailable: $isNextPageAvailable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Success &&
            const DeepCollectionEquality().equals(other._pockets, _pockets) &&
            (identical(other.balanceInfo, balanceInfo) ||
                other.balanceInfo == balanceInfo) &&
            (identical(other.isNextPageAvailable, isNextPageAvailable) ||
                other.isNextPageAvailable == isNextPageAvailable));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_pockets),
      balanceInfo,
      isNextPageAvailable);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SuccessCopyWith<_$_Success> get copyWith =>
      __$$_SuccessCopyWithImpl<_$_Success>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Pocket> pockets) initial,
    required TResult Function(List<Pocket> pockets, String balanceInfo) loading,
    required TResult Function(
            List<Pocket> pockets, String balanceInfo, bool isNextPageAvailable)
        success,
    required TResult Function(List<Pocket> pockets, DataFailure failure)
        failure,
  }) {
    return success(pockets, balanceInfo, isNextPageAvailable);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Pocket> pockets)? initial,
    TResult? Function(List<Pocket> pockets, String balanceInfo)? loading,
    TResult? Function(
            List<Pocket> pockets, String balanceInfo, bool isNextPageAvailable)?
        success,
    TResult? Function(List<Pocket> pockets, DataFailure failure)? failure,
  }) {
    return success?.call(pockets, balanceInfo, isNextPageAvailable);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Pocket> pockets)? initial,
    TResult Function(List<Pocket> pockets, String balanceInfo)? loading,
    TResult Function(
            List<Pocket> pockets, String balanceInfo, bool isNextPageAvailable)?
        success,
    TResult Function(List<Pocket> pockets, DataFailure failure)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(pockets, balanceInfo, isNextPageAvailable);
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

abstract class _Success extends PocketState {
  const factory _Success(final List<Pocket> pockets, final String balanceInfo,
      {required final bool isNextPageAvailable}) = _$_Success;
  const _Success._() : super._();

  @override
  List<Pocket> get pockets;
  String get balanceInfo;
  bool get isNextPageAvailable;
  @override
  @JsonKey(ignore: true)
  _$$_SuccessCopyWith<_$_Success> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FailureCopyWith<$Res> implements $PocketStateCopyWith<$Res> {
  factory _$$_FailureCopyWith(
          _$_Failure value, $Res Function(_$_Failure) then) =
      __$$_FailureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Pocket> pockets, DataFailure failure});

  $DataFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$_FailureCopyWithImpl<$Res>
    extends _$PocketStateCopyWithImpl<$Res, _$_Failure>
    implements _$$_FailureCopyWith<$Res> {
  __$$_FailureCopyWithImpl(_$_Failure _value, $Res Function(_$_Failure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pockets = null,
    Object? failure = null,
  }) {
    return _then(_$_Failure(
      null == pockets
          ? _value._pockets
          : pockets // ignore: cast_nullable_to_non_nullable
              as List<Pocket>,
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
  const _$_Failure(final List<Pocket> pockets, this.failure)
      : _pockets = pockets,
        super._();

  final List<Pocket> _pockets;
  @override
  List<Pocket> get pockets {
    if (_pockets is EqualUnmodifiableListView) return _pockets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pockets);
  }

  @override
  final DataFailure failure;

  @override
  String toString() {
    return 'PocketState.failure(pockets: $pockets, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Failure &&
            const DeepCollectionEquality().equals(other._pockets, _pockets) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_pockets), failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FailureCopyWith<_$_Failure> get copyWith =>
      __$$_FailureCopyWithImpl<_$_Failure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Pocket> pockets) initial,
    required TResult Function(List<Pocket> pockets, String balanceInfo) loading,
    required TResult Function(
            List<Pocket> pockets, String balanceInfo, bool isNextPageAvailable)
        success,
    required TResult Function(List<Pocket> pockets, DataFailure failure)
        failure,
  }) {
    return failure(pockets, this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Pocket> pockets)? initial,
    TResult? Function(List<Pocket> pockets, String balanceInfo)? loading,
    TResult? Function(
            List<Pocket> pockets, String balanceInfo, bool isNextPageAvailable)?
        success,
    TResult? Function(List<Pocket> pockets, DataFailure failure)? failure,
  }) {
    return failure?.call(pockets, this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Pocket> pockets)? initial,
    TResult Function(List<Pocket> pockets, String balanceInfo)? loading,
    TResult Function(
            List<Pocket> pockets, String balanceInfo, bool isNextPageAvailable)?
        success,
    TResult Function(List<Pocket> pockets, DataFailure failure)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(pockets, this.failure);
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

abstract class _Failure extends PocketState {
  const factory _Failure(
      final List<Pocket> pockets, final DataFailure failure) = _$_Failure;
  const _Failure._() : super._();

  @override
  List<Pocket> get pockets;
  DataFailure get failure;
  @override
  @JsonKey(ignore: true)
  _$$_FailureCopyWith<_$_Failure> get copyWith =>
      throw _privateConstructorUsedError;
}
