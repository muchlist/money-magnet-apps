// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pocket_list_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PocketListResponseDTO _$PocketListResponseDTOFromJson(
    Map<String, dynamic> json) {
  return _PocketListResponseDTO.fromJson(json);
}

/// @nodoc
mixin _$PocketListResponseDTO {
  @JsonKey(name: 'data', defaultValue: [])
  List<PocketDTO>? get data => throw _privateConstructorUsedError;
  @JsonKey(name: 'metadata')
  MetadataDTO get metaData => throw _privateConstructorUsedError;
  @JsonKey(name: 'error')
  String? get error => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PocketListResponseDTOCopyWith<PocketListResponseDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PocketListResponseDTOCopyWith<$Res> {
  factory $PocketListResponseDTOCopyWith(PocketListResponseDTO value,
          $Res Function(PocketListResponseDTO) then) =
      _$PocketListResponseDTOCopyWithImpl<$Res, PocketListResponseDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'data', defaultValue: []) List<PocketDTO>? data,
      @JsonKey(name: 'metadata') MetadataDTO metaData,
      @JsonKey(name: 'error') String? error});

  $MetadataDTOCopyWith<$Res> get metaData;
}

/// @nodoc
class _$PocketListResponseDTOCopyWithImpl<$Res,
        $Val extends PocketListResponseDTO>
    implements $PocketListResponseDTOCopyWith<$Res> {
  _$PocketListResponseDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? metaData = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<PocketDTO>?,
      metaData: null == metaData
          ? _value.metaData
          : metaData // ignore: cast_nullable_to_non_nullable
              as MetadataDTO,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MetadataDTOCopyWith<$Res> get metaData {
    return $MetadataDTOCopyWith<$Res>(_value.metaData, (value) {
      return _then(_value.copyWith(metaData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PocketListResponseDTOImplCopyWith<$Res>
    implements $PocketListResponseDTOCopyWith<$Res> {
  factory _$$PocketListResponseDTOImplCopyWith(
          _$PocketListResponseDTOImpl value,
          $Res Function(_$PocketListResponseDTOImpl) then) =
      __$$PocketListResponseDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'data', defaultValue: []) List<PocketDTO>? data,
      @JsonKey(name: 'metadata') MetadataDTO metaData,
      @JsonKey(name: 'error') String? error});

  @override
  $MetadataDTOCopyWith<$Res> get metaData;
}

/// @nodoc
class __$$PocketListResponseDTOImplCopyWithImpl<$Res>
    extends _$PocketListResponseDTOCopyWithImpl<$Res,
        _$PocketListResponseDTOImpl>
    implements _$$PocketListResponseDTOImplCopyWith<$Res> {
  __$$PocketListResponseDTOImplCopyWithImpl(_$PocketListResponseDTOImpl _value,
      $Res Function(_$PocketListResponseDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? metaData = null,
    Object? error = freezed,
  }) {
    return _then(_$PocketListResponseDTOImpl(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<PocketDTO>?,
      metaData: null == metaData
          ? _value.metaData
          : metaData // ignore: cast_nullable_to_non_nullable
              as MetadataDTO,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PocketListResponseDTOImpl extends _PocketListResponseDTO {
  const _$PocketListResponseDTOImpl(
      {@JsonKey(name: 'data', defaultValue: [])
      required final List<PocketDTO>? data,
      @JsonKey(name: 'metadata') required this.metaData,
      @JsonKey(name: 'error') required this.error})
      : _data = data,
        super._();

  factory _$PocketListResponseDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$PocketListResponseDTOImplFromJson(json);

  final List<PocketDTO>? _data;
  @override
  @JsonKey(name: 'data', defaultValue: [])
  List<PocketDTO>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'metadata')
  final MetadataDTO metaData;
  @override
  @JsonKey(name: 'error')
  final String? error;

  @override
  String toString() {
    return 'PocketListResponseDTO(data: $data, metaData: $metaData, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PocketListResponseDTOImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.metaData, metaData) ||
                other.metaData == metaData) &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_data), metaData, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PocketListResponseDTOImplCopyWith<_$PocketListResponseDTOImpl>
      get copyWith => __$$PocketListResponseDTOImplCopyWithImpl<
          _$PocketListResponseDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PocketListResponseDTOImplToJson(
      this,
    );
  }
}

abstract class _PocketListResponseDTO extends PocketListResponseDTO {
  const factory _PocketListResponseDTO(
          {@JsonKey(name: 'data', defaultValue: [])
          required final List<PocketDTO>? data,
          @JsonKey(name: 'metadata') required final MetadataDTO metaData,
          @JsonKey(name: 'error') required final String? error}) =
      _$PocketListResponseDTOImpl;
  const _PocketListResponseDTO._() : super._();

  factory _PocketListResponseDTO.fromJson(Map<String, dynamic> json) =
      _$PocketListResponseDTOImpl.fromJson;

  @override
  @JsonKey(name: 'data', defaultValue: [])
  List<PocketDTO>? get data;
  @override
  @JsonKey(name: 'metadata')
  MetadataDTO get metaData;
  @override
  @JsonKey(name: 'error')
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$PocketListResponseDTOImplCopyWith<_$PocketListResponseDTOImpl>
      get copyWith => throw _privateConstructorUsedError;
}
