// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'metadata.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MetadataDTO _$MetadataDTOFromJson(Map<String, dynamic> json) {
  return _MetadataDTO.fromJson(json);
}

/// @nodoc
mixin _$MetadataDTO {
  @JsonKey(name: 'current_page', defaultValue: 0)
  int get currentPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_page', defaultValue: 0)
  int get firstPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_page', defaultValue: 0)
  int get lastPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'page_size', defaultValue: 0)
  int get pageSize => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_records', defaultValue: 0)
  int get totalRecords => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MetadataDTOCopyWith<MetadataDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetadataDTOCopyWith<$Res> {
  factory $MetadataDTOCopyWith(
          MetadataDTO value, $Res Function(MetadataDTO) then) =
      _$MetadataDTOCopyWithImpl<$Res, MetadataDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'current_page', defaultValue: 0) int currentPage,
      @JsonKey(name: 'first_page', defaultValue: 0) int firstPage,
      @JsonKey(name: 'last_page', defaultValue: 0) int lastPage,
      @JsonKey(name: 'page_size', defaultValue: 0) int pageSize,
      @JsonKey(name: 'total_records', defaultValue: 0) int totalRecords});
}

/// @nodoc
class _$MetadataDTOCopyWithImpl<$Res, $Val extends MetadataDTO>
    implements $MetadataDTOCopyWith<$Res> {
  _$MetadataDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = null,
    Object? firstPage = null,
    Object? lastPage = null,
    Object? pageSize = null,
    Object? totalRecords = null,
  }) {
    return _then(_value.copyWith(
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      firstPage: null == firstPage
          ? _value.firstPage
          : firstPage // ignore: cast_nullable_to_non_nullable
              as int,
      lastPage: null == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      totalRecords: null == totalRecords
          ? _value.totalRecords
          : totalRecords // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MetadataDTOCopyWith<$Res>
    implements $MetadataDTOCopyWith<$Res> {
  factory _$$_MetadataDTOCopyWith(
          _$_MetadataDTO value, $Res Function(_$_MetadataDTO) then) =
      __$$_MetadataDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'current_page', defaultValue: 0) int currentPage,
      @JsonKey(name: 'first_page', defaultValue: 0) int firstPage,
      @JsonKey(name: 'last_page', defaultValue: 0) int lastPage,
      @JsonKey(name: 'page_size', defaultValue: 0) int pageSize,
      @JsonKey(name: 'total_records', defaultValue: 0) int totalRecords});
}

/// @nodoc
class __$$_MetadataDTOCopyWithImpl<$Res>
    extends _$MetadataDTOCopyWithImpl<$Res, _$_MetadataDTO>
    implements _$$_MetadataDTOCopyWith<$Res> {
  __$$_MetadataDTOCopyWithImpl(
      _$_MetadataDTO _value, $Res Function(_$_MetadataDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = null,
    Object? firstPage = null,
    Object? lastPage = null,
    Object? pageSize = null,
    Object? totalRecords = null,
  }) {
    return _then(_$_MetadataDTO(
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      firstPage: null == firstPage
          ? _value.firstPage
          : firstPage // ignore: cast_nullable_to_non_nullable
              as int,
      lastPage: null == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      totalRecords: null == totalRecords
          ? _value.totalRecords
          : totalRecords // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MetadataDTO extends _MetadataDTO {
  const _$_MetadataDTO(
      {@JsonKey(name: 'current_page', defaultValue: 0)
      required this.currentPage,
      @JsonKey(name: 'first_page', defaultValue: 0) required this.firstPage,
      @JsonKey(name: 'last_page', defaultValue: 0) required this.lastPage,
      @JsonKey(name: 'page_size', defaultValue: 0) required this.pageSize,
      @JsonKey(name: 'total_records', defaultValue: 0)
      required this.totalRecords})
      : super._();

  factory _$_MetadataDTO.fromJson(Map<String, dynamic> json) =>
      _$$_MetadataDTOFromJson(json);

  @override
  @JsonKey(name: 'current_page', defaultValue: 0)
  final int currentPage;
  @override
  @JsonKey(name: 'first_page', defaultValue: 0)
  final int firstPage;
  @override
  @JsonKey(name: 'last_page', defaultValue: 0)
  final int lastPage;
  @override
  @JsonKey(name: 'page_size', defaultValue: 0)
  final int pageSize;
  @override
  @JsonKey(name: 'total_records', defaultValue: 0)
  final int totalRecords;

  @override
  String toString() {
    return 'MetadataDTO(currentPage: $currentPage, firstPage: $firstPage, lastPage: $lastPage, pageSize: $pageSize, totalRecords: $totalRecords)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MetadataDTO &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.firstPage, firstPage) ||
                other.firstPage == firstPage) &&
            (identical(other.lastPage, lastPage) ||
                other.lastPage == lastPage) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize) &&
            (identical(other.totalRecords, totalRecords) ||
                other.totalRecords == totalRecords));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, currentPage, firstPage, lastPage, pageSize, totalRecords);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MetadataDTOCopyWith<_$_MetadataDTO> get copyWith =>
      __$$_MetadataDTOCopyWithImpl<_$_MetadataDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MetadataDTOToJson(
      this,
    );
  }
}

abstract class _MetadataDTO extends MetadataDTO {
  const factory _MetadataDTO(
      {@JsonKey(name: 'current_page', defaultValue: 0)
      required final int currentPage,
      @JsonKey(name: 'first_page', defaultValue: 0)
      required final int firstPage,
      @JsonKey(name: 'last_page', defaultValue: 0) required final int lastPage,
      @JsonKey(name: 'page_size', defaultValue: 0) required final int pageSize,
      @JsonKey(name: 'total_records', defaultValue: 0)
      required final int totalRecords}) = _$_MetadataDTO;
  const _MetadataDTO._() : super._();

  factory _MetadataDTO.fromJson(Map<String, dynamic> json) =
      _$_MetadataDTO.fromJson;

  @override
  @JsonKey(name: 'current_page', defaultValue: 0)
  int get currentPage;
  @override
  @JsonKey(name: 'first_page', defaultValue: 0)
  int get firstPage;
  @override
  @JsonKey(name: 'last_page', defaultValue: 0)
  int get lastPage;
  @override
  @JsonKey(name: 'page_size', defaultValue: 0)
  int get pageSize;
  @override
  @JsonKey(name: 'total_records', defaultValue: 0)
  int get totalRecords;
  @override
  @JsonKey(ignore: true)
  _$$_MetadataDTOCopyWith<_$_MetadataDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
