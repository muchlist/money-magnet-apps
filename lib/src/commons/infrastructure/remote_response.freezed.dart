// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'remote_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RemoteResponse<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noConnection,
    required TResult Function(T data, MetadataDTO? meta) withNewData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? noConnection,
    TResult? Function(T data, MetadataDTO? meta)? withNewData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noConnection,
    TResult Function(T data, MetadataDTO? meta)? withNewData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoConnection<T> value) noConnection,
    required TResult Function(_WithNewData<T> value) withNewData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoConnection<T> value)? noConnection,
    TResult? Function(_WithNewData<T> value)? withNewData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoConnection<T> value)? noConnection,
    TResult Function(_WithNewData<T> value)? withNewData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoteResponseCopyWith<T, $Res> {
  factory $RemoteResponseCopyWith(
          RemoteResponse<T> value, $Res Function(RemoteResponse<T>) then) =
      _$RemoteResponseCopyWithImpl<T, $Res, RemoteResponse<T>>;
}

/// @nodoc
class _$RemoteResponseCopyWithImpl<T, $Res, $Val extends RemoteResponse<T>>
    implements $RemoteResponseCopyWith<T, $Res> {
  _$RemoteResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_NoConnectionCopyWith<T, $Res> {
  factory _$$_NoConnectionCopyWith(
          _$_NoConnection<T> value, $Res Function(_$_NoConnection<T>) then) =
      __$$_NoConnectionCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$_NoConnectionCopyWithImpl<T, $Res>
    extends _$RemoteResponseCopyWithImpl<T, $Res, _$_NoConnection<T>>
    implements _$$_NoConnectionCopyWith<T, $Res> {
  __$$_NoConnectionCopyWithImpl(
      _$_NoConnection<T> _value, $Res Function(_$_NoConnection<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_NoConnection<T> extends _NoConnection<T> {
  const _$_NoConnection() : super._();

  @override
  String toString() {
    return 'RemoteResponse<$T>.noConnection()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_NoConnection<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noConnection,
    required TResult Function(T data, MetadataDTO? meta) withNewData,
  }) {
    return noConnection();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? noConnection,
    TResult? Function(T data, MetadataDTO? meta)? withNewData,
  }) {
    return noConnection?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noConnection,
    TResult Function(T data, MetadataDTO? meta)? withNewData,
    required TResult orElse(),
  }) {
    if (noConnection != null) {
      return noConnection();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoConnection<T> value) noConnection,
    required TResult Function(_WithNewData<T> value) withNewData,
  }) {
    return noConnection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoConnection<T> value)? noConnection,
    TResult? Function(_WithNewData<T> value)? withNewData,
  }) {
    return noConnection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoConnection<T> value)? noConnection,
    TResult Function(_WithNewData<T> value)? withNewData,
    required TResult orElse(),
  }) {
    if (noConnection != null) {
      return noConnection(this);
    }
    return orElse();
  }
}

abstract class _NoConnection<T> extends RemoteResponse<T> {
  const factory _NoConnection() = _$_NoConnection<T>;
  const _NoConnection._() : super._();
}

/// @nodoc
abstract class _$$_WithNewDataCopyWith<T, $Res> {
  factory _$$_WithNewDataCopyWith(
          _$_WithNewData<T> value, $Res Function(_$_WithNewData<T>) then) =
      __$$_WithNewDataCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data, MetadataDTO? meta});

  $MetadataDTOCopyWith<$Res>? get meta;
}

/// @nodoc
class __$$_WithNewDataCopyWithImpl<T, $Res>
    extends _$RemoteResponseCopyWithImpl<T, $Res, _$_WithNewData<T>>
    implements _$$_WithNewDataCopyWith<T, $Res> {
  __$$_WithNewDataCopyWithImpl(
      _$_WithNewData<T> _value, $Res Function(_$_WithNewData<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? meta = freezed,
  }) {
    return _then(_$_WithNewData<T>(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetadataDTO?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $MetadataDTOCopyWith<$Res>? get meta {
    if (_value.meta == null) {
      return null;
    }

    return $MetadataDTOCopyWith<$Res>(_value.meta!, (value) {
      return _then(_value.copyWith(meta: value));
    });
  }
}

/// @nodoc

class _$_WithNewData<T> extends _WithNewData<T> {
  const _$_WithNewData({required this.data, this.meta}) : super._();

  @override
  final T data;
  @override
  final MetadataDTO? meta;

  @override
  String toString() {
    return 'RemoteResponse<$T>.withNewData(data: $data, meta: $meta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WithNewData<T> &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.meta, meta) || other.meta == meta));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data), meta);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WithNewDataCopyWith<T, _$_WithNewData<T>> get copyWith =>
      __$$_WithNewDataCopyWithImpl<T, _$_WithNewData<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noConnection,
    required TResult Function(T data, MetadataDTO? meta) withNewData,
  }) {
    return withNewData(data, meta);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? noConnection,
    TResult? Function(T data, MetadataDTO? meta)? withNewData,
  }) {
    return withNewData?.call(data, meta);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noConnection,
    TResult Function(T data, MetadataDTO? meta)? withNewData,
    required TResult orElse(),
  }) {
    if (withNewData != null) {
      return withNewData(data, meta);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoConnection<T> value) noConnection,
    required TResult Function(_WithNewData<T> value) withNewData,
  }) {
    return withNewData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoConnection<T> value)? noConnection,
    TResult? Function(_WithNewData<T> value)? withNewData,
  }) {
    return withNewData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoConnection<T> value)? noConnection,
    TResult Function(_WithNewData<T> value)? withNewData,
    required TResult orElse(),
  }) {
    if (withNewData != null) {
      return withNewData(this);
    }
    return orElse();
  }
}

abstract class _WithNewData<T> extends RemoteResponse<T> {
  const factory _WithNewData({required final T data, final MetadataDTO? meta}) =
      _$_WithNewData<T>;
  const _WithNewData._() : super._();

  T get data;
  MetadataDTO? get meta;
  @JsonKey(ignore: true)
  _$$_WithNewDataCopyWith<T, _$_WithNewData<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
