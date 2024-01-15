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
  Pocket get detail => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Pocket> pockets, Pocket detail) initial,
    required TResult Function(
            List<Pocket> pockets, Pocket detail, String balanceInfo)
        loading,
    required TResult Function(List<Pocket> pockets, Pocket detail,
            String balanceInfo, bool isNextPageAvailable)
        success,
    required TResult Function(
            List<Pocket> pockets, Pocket detail, DataFailure failure)
        failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Pocket> pockets, Pocket detail)? initial,
    TResult? Function(List<Pocket> pockets, Pocket detail, String balanceInfo)?
        loading,
    TResult? Function(List<Pocket> pockets, Pocket detail, String balanceInfo,
            bool isNextPageAvailable)?
        success,
    TResult? Function(List<Pocket> pockets, Pocket detail, DataFailure failure)?
        failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Pocket> pockets, Pocket detail)? initial,
    TResult Function(List<Pocket> pockets, Pocket detail, String balanceInfo)?
        loading,
    TResult Function(List<Pocket> pockets, Pocket detail, String balanceInfo,
            bool isNextPageAvailable)?
        success,
    TResult Function(List<Pocket> pockets, Pocket detail, DataFailure failure)?
        failure,
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
  $Res call({List<Pocket> pockets, Pocket detail});

  $PocketCopyWith<$Res> get detail;
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
    Object? detail = null,
  }) {
    return _then(_value.copyWith(
      pockets: null == pockets
          ? _value.pockets
          : pockets // ignore: cast_nullable_to_non_nullable
              as List<Pocket>,
      detail: null == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as Pocket,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PocketCopyWith<$Res> get detail {
    return $PocketCopyWith<$Res>(_value.detail, (value) {
      return _then(_value.copyWith(detail: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $PocketStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Pocket> pockets, Pocket detail});

  @override
  $PocketCopyWith<$Res> get detail;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$PocketStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pockets = null,
    Object? detail = null,
  }) {
    return _then(_$InitialImpl(
      null == pockets
          ? _value._pockets
          : pockets // ignore: cast_nullable_to_non_nullable
              as List<Pocket>,
      null == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as Pocket,
    ));
  }
}

/// @nodoc

class _$InitialImpl extends _Initial {
  const _$InitialImpl(final List<Pocket> pockets, this.detail)
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
  final Pocket detail;

  @override
  String toString() {
    return 'PocketState.initial(pockets: $pockets, detail: $detail)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            const DeepCollectionEquality().equals(other._pockets, _pockets) &&
            (identical(other.detail, detail) || other.detail == detail));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_pockets), detail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Pocket> pockets, Pocket detail) initial,
    required TResult Function(
            List<Pocket> pockets, Pocket detail, String balanceInfo)
        loading,
    required TResult Function(List<Pocket> pockets, Pocket detail,
            String balanceInfo, bool isNextPageAvailable)
        success,
    required TResult Function(
            List<Pocket> pockets, Pocket detail, DataFailure failure)
        failure,
  }) {
    return initial(pockets, detail);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Pocket> pockets, Pocket detail)? initial,
    TResult? Function(List<Pocket> pockets, Pocket detail, String balanceInfo)?
        loading,
    TResult? Function(List<Pocket> pockets, Pocket detail, String balanceInfo,
            bool isNextPageAvailable)?
        success,
    TResult? Function(List<Pocket> pockets, Pocket detail, DataFailure failure)?
        failure,
  }) {
    return initial?.call(pockets, detail);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Pocket> pockets, Pocket detail)? initial,
    TResult Function(List<Pocket> pockets, Pocket detail, String balanceInfo)?
        loading,
    TResult Function(List<Pocket> pockets, Pocket detail, String balanceInfo,
            bool isNextPageAvailable)?
        success,
    TResult Function(List<Pocket> pockets, Pocket detail, DataFailure failure)?
        failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(pockets, detail);
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
  const factory _Initial(final List<Pocket> pockets, final Pocket detail) =
      _$InitialImpl;
  const _Initial._() : super._();

  @override
  List<Pocket> get pockets;
  @override
  Pocket get detail;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res>
    implements $PocketStateCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Pocket> pockets, Pocket detail, String balanceInfo});

  @override
  $PocketCopyWith<$Res> get detail;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$PocketStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pockets = null,
    Object? detail = null,
    Object? balanceInfo = null,
  }) {
    return _then(_$LoadingImpl(
      null == pockets
          ? _value._pockets
          : pockets // ignore: cast_nullable_to_non_nullable
              as List<Pocket>,
      null == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as Pocket,
      null == balanceInfo
          ? _value.balanceInfo
          : balanceInfo // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadingImpl extends _Loading {
  const _$LoadingImpl(final List<Pocket> pockets, this.detail, this.balanceInfo)
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
  final Pocket detail;
  @override
  final String balanceInfo;

  @override
  String toString() {
    return 'PocketState.loading(pockets: $pockets, detail: $detail, balanceInfo: $balanceInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingImpl &&
            const DeepCollectionEquality().equals(other._pockets, _pockets) &&
            (identical(other.detail, detail) || other.detail == detail) &&
            (identical(other.balanceInfo, balanceInfo) ||
                other.balanceInfo == balanceInfo));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_pockets), detail, balanceInfo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      __$$LoadingImplCopyWithImpl<_$LoadingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Pocket> pockets, Pocket detail) initial,
    required TResult Function(
            List<Pocket> pockets, Pocket detail, String balanceInfo)
        loading,
    required TResult Function(List<Pocket> pockets, Pocket detail,
            String balanceInfo, bool isNextPageAvailable)
        success,
    required TResult Function(
            List<Pocket> pockets, Pocket detail, DataFailure failure)
        failure,
  }) {
    return loading(pockets, detail, balanceInfo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Pocket> pockets, Pocket detail)? initial,
    TResult? Function(List<Pocket> pockets, Pocket detail, String balanceInfo)?
        loading,
    TResult? Function(List<Pocket> pockets, Pocket detail, String balanceInfo,
            bool isNextPageAvailable)?
        success,
    TResult? Function(List<Pocket> pockets, Pocket detail, DataFailure failure)?
        failure,
  }) {
    return loading?.call(pockets, detail, balanceInfo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Pocket> pockets, Pocket detail)? initial,
    TResult Function(List<Pocket> pockets, Pocket detail, String balanceInfo)?
        loading,
    TResult Function(List<Pocket> pockets, Pocket detail, String balanceInfo,
            bool isNextPageAvailable)?
        success,
    TResult Function(List<Pocket> pockets, Pocket detail, DataFailure failure)?
        failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(pockets, detail, balanceInfo);
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
  const factory _Loading(final List<Pocket> pockets, final Pocket detail,
      final String balanceInfo) = _$LoadingImpl;
  const _Loading._() : super._();

  @override
  List<Pocket> get pockets;
  @override
  Pocket get detail;
  String get balanceInfo;
  @override
  @JsonKey(ignore: true)
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res>
    implements $PocketStateCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Pocket> pockets,
      Pocket detail,
      String balanceInfo,
      bool isNextPageAvailable});

  @override
  $PocketCopyWith<$Res> get detail;
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$PocketStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pockets = null,
    Object? detail = null,
    Object? balanceInfo = null,
    Object? isNextPageAvailable = null,
  }) {
    return _then(_$SuccessImpl(
      null == pockets
          ? _value._pockets
          : pockets // ignore: cast_nullable_to_non_nullable
              as List<Pocket>,
      null == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as Pocket,
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

class _$SuccessImpl extends _Success {
  const _$SuccessImpl(final List<Pocket> pockets, this.detail, this.balanceInfo,
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
  final Pocket detail;
  @override
  final String balanceInfo;
  @override
  final bool isNextPageAvailable;

  @override
  String toString() {
    return 'PocketState.success(pockets: $pockets, detail: $detail, balanceInfo: $balanceInfo, isNextPageAvailable: $isNextPageAvailable)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            const DeepCollectionEquality().equals(other._pockets, _pockets) &&
            (identical(other.detail, detail) || other.detail == detail) &&
            (identical(other.balanceInfo, balanceInfo) ||
                other.balanceInfo == balanceInfo) &&
            (identical(other.isNextPageAvailable, isNextPageAvailable) ||
                other.isNextPageAvailable == isNextPageAvailable));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_pockets),
      detail,
      balanceInfo,
      isNextPageAvailable);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Pocket> pockets, Pocket detail) initial,
    required TResult Function(
            List<Pocket> pockets, Pocket detail, String balanceInfo)
        loading,
    required TResult Function(List<Pocket> pockets, Pocket detail,
            String balanceInfo, bool isNextPageAvailable)
        success,
    required TResult Function(
            List<Pocket> pockets, Pocket detail, DataFailure failure)
        failure,
  }) {
    return success(pockets, detail, balanceInfo, isNextPageAvailable);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Pocket> pockets, Pocket detail)? initial,
    TResult? Function(List<Pocket> pockets, Pocket detail, String balanceInfo)?
        loading,
    TResult? Function(List<Pocket> pockets, Pocket detail, String balanceInfo,
            bool isNextPageAvailable)?
        success,
    TResult? Function(List<Pocket> pockets, Pocket detail, DataFailure failure)?
        failure,
  }) {
    return success?.call(pockets, detail, balanceInfo, isNextPageAvailable);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Pocket> pockets, Pocket detail)? initial,
    TResult Function(List<Pocket> pockets, Pocket detail, String balanceInfo)?
        loading,
    TResult Function(List<Pocket> pockets, Pocket detail, String balanceInfo,
            bool isNextPageAvailable)?
        success,
    TResult Function(List<Pocket> pockets, Pocket detail, DataFailure failure)?
        failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(pockets, detail, balanceInfo, isNextPageAvailable);
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
  const factory _Success(
      final List<Pocket> pockets, final Pocket detail, final String balanceInfo,
      {required final bool isNextPageAvailable}) = _$SuccessImpl;
  const _Success._() : super._();

  @override
  List<Pocket> get pockets;
  @override
  Pocket get detail;
  String get balanceInfo;
  bool get isNextPageAvailable;
  @override
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureImplCopyWith<$Res>
    implements $PocketStateCopyWith<$Res> {
  factory _$$FailureImplCopyWith(
          _$FailureImpl value, $Res Function(_$FailureImpl) then) =
      __$$FailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Pocket> pockets, Pocket detail, DataFailure failure});

  @override
  $PocketCopyWith<$Res> get detail;
  $DataFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$FailureImplCopyWithImpl<$Res>
    extends _$PocketStateCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl _value, $Res Function(_$FailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pockets = null,
    Object? detail = null,
    Object? failure = null,
  }) {
    return _then(_$FailureImpl(
      null == pockets
          ? _value._pockets
          : pockets // ignore: cast_nullable_to_non_nullable
              as List<Pocket>,
      null == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as Pocket,
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

class _$FailureImpl extends _Failure {
  const _$FailureImpl(final List<Pocket> pockets, this.detail, this.failure)
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
  final Pocket detail;
  @override
  final DataFailure failure;

  @override
  String toString() {
    return 'PocketState.failure(pockets: $pockets, detail: $detail, failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureImpl &&
            const DeepCollectionEquality().equals(other._pockets, _pockets) &&
            (identical(other.detail, detail) || other.detail == detail) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_pockets), detail, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      __$$FailureImplCopyWithImpl<_$FailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Pocket> pockets, Pocket detail) initial,
    required TResult Function(
            List<Pocket> pockets, Pocket detail, String balanceInfo)
        loading,
    required TResult Function(List<Pocket> pockets, Pocket detail,
            String balanceInfo, bool isNextPageAvailable)
        success,
    required TResult Function(
            List<Pocket> pockets, Pocket detail, DataFailure failure)
        failure,
  }) {
    return failure(pockets, detail, this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Pocket> pockets, Pocket detail)? initial,
    TResult? Function(List<Pocket> pockets, Pocket detail, String balanceInfo)?
        loading,
    TResult? Function(List<Pocket> pockets, Pocket detail, String balanceInfo,
            bool isNextPageAvailable)?
        success,
    TResult? Function(List<Pocket> pockets, Pocket detail, DataFailure failure)?
        failure,
  }) {
    return failure?.call(pockets, detail, this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Pocket> pockets, Pocket detail)? initial,
    TResult Function(List<Pocket> pockets, Pocket detail, String balanceInfo)?
        loading,
    TResult Function(List<Pocket> pockets, Pocket detail, String balanceInfo,
            bool isNextPageAvailable)?
        success,
    TResult Function(List<Pocket> pockets, Pocket detail, DataFailure failure)?
        failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(pockets, detail, this.failure);
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
  const factory _Failure(final List<Pocket> pockets, final Pocket detail,
      final DataFailure failure) = _$FailureImpl;
  const _Failure._() : super._();

  @override
  List<Pocket> get pockets;
  @override
  Pocket get detail;
  DataFailure get failure;
  @override
  @JsonKey(ignore: true)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
