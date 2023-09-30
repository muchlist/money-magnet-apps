// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'spend_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SpendResponseDTO _$SpendResponseDTOFromJson(Map<String, dynamic> json) {
  return _SpendResponseDTO.fromJson(json);
}

/// @nodoc
mixin _$SpendResponseDTO {
  @JsonKey(name: 'data')
  SpendDTO? get data => throw _privateConstructorUsedError;
  @JsonKey(name: 'error')
  String? get error => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpendResponseDTOCopyWith<SpendResponseDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpendResponseDTOCopyWith<$Res> {
  factory $SpendResponseDTOCopyWith(
          SpendResponseDTO value, $Res Function(SpendResponseDTO) then) =
      _$SpendResponseDTOCopyWithImpl<$Res, SpendResponseDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'data') SpendDTO? data,
      @JsonKey(name: 'error') String? error});

  $SpendDTOCopyWith<$Res>? get data;
}

/// @nodoc
class _$SpendResponseDTOCopyWithImpl<$Res, $Val extends SpendResponseDTO>
    implements $SpendResponseDTOCopyWith<$Res> {
  _$SpendResponseDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SpendDTO?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SpendDTOCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $SpendDTOCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SpendResponseDTOCopyWith<$Res>
    implements $SpendResponseDTOCopyWith<$Res> {
  factory _$$_SpendResponseDTOCopyWith(
          _$_SpendResponseDTO value, $Res Function(_$_SpendResponseDTO) then) =
      __$$_SpendResponseDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'data') SpendDTO? data,
      @JsonKey(name: 'error') String? error});

  @override
  $SpendDTOCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_SpendResponseDTOCopyWithImpl<$Res>
    extends _$SpendResponseDTOCopyWithImpl<$Res, _$_SpendResponseDTO>
    implements _$$_SpendResponseDTOCopyWith<$Res> {
  __$$_SpendResponseDTOCopyWithImpl(
      _$_SpendResponseDTO _value, $Res Function(_$_SpendResponseDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? error = freezed,
  }) {
    return _then(_$_SpendResponseDTO(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SpendDTO?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SpendResponseDTO extends _SpendResponseDTO {
  const _$_SpendResponseDTO(
      {@JsonKey(name: 'data') required this.data,
      @JsonKey(name: 'error') required this.error})
      : super._();

  factory _$_SpendResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$$_SpendResponseDTOFromJson(json);

  @override
  @JsonKey(name: 'data')
  final SpendDTO? data;
  @override
  @JsonKey(name: 'error')
  final String? error;

  @override
  String toString() {
    return 'SpendResponseDTO(data: $data, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SpendResponseDTO &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SpendResponseDTOCopyWith<_$_SpendResponseDTO> get copyWith =>
      __$$_SpendResponseDTOCopyWithImpl<_$_SpendResponseDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SpendResponseDTOToJson(
      this,
    );
  }
}

abstract class _SpendResponseDTO extends SpendResponseDTO {
  const factory _SpendResponseDTO(
          {@JsonKey(name: 'data') required final SpendDTO? data,
          @JsonKey(name: 'error') required final String? error}) =
      _$_SpendResponseDTO;
  const _SpendResponseDTO._() : super._();

  factory _SpendResponseDTO.fromJson(Map<String, dynamic> json) =
      _$_SpendResponseDTO.fromJson;

  @override
  @JsonKey(name: 'data')
  SpendDTO? get data;
  @override
  @JsonKey(name: 'error')
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$_SpendResponseDTOCopyWith<_$_SpendResponseDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

SpendDTO _$SpendDTOFromJson(Map<String, dynamic> json) {
  return _SpendDTO.fromJson(json);
}

/// @nodoc
mixin _$SpendDTO {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String get userID => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_name')
  String get userName => throw _privateConstructorUsedError;
  @JsonKey(name: 'pocket_id')
  String get pocketID => throw _privateConstructorUsedError;
  @JsonKey(name: 'pocket_name')
  String get pocketName => throw _privateConstructorUsedError;
  @JsonKey(name: 'category_id')
  String get categoryID => throw _privateConstructorUsedError;
  @JsonKey(name: 'category_name')
  String get categoryName => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'balance_snapshoot')
  int get balanceSnapshoot => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_income')
  bool get isIncome => throw _privateConstructorUsedError;
  int get type => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String get updatedAt => throw _privateConstructorUsedError;
  int get version => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpendDTOCopyWith<SpendDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpendDTOCopyWith<$Res> {
  factory $SpendDTOCopyWith(SpendDTO value, $Res Function(SpendDTO) then) =
      _$SpendDTOCopyWithImpl<$Res, SpendDTO>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'user_id') String userID,
      @JsonKey(name: 'user_name') String userName,
      @JsonKey(name: 'pocket_id') String pocketID,
      @JsonKey(name: 'pocket_name') String pocketName,
      @JsonKey(name: 'category_id') String categoryID,
      @JsonKey(name: 'category_name') String categoryName,
      String name,
      int price,
      @JsonKey(name: 'balance_snapshoot') int balanceSnapshoot,
      @JsonKey(name: 'is_income') bool isIncome,
      int type,
      String date,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt,
      int version});
}

/// @nodoc
class _$SpendDTOCopyWithImpl<$Res, $Val extends SpendDTO>
    implements $SpendDTOCopyWith<$Res> {
  _$SpendDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userID = null,
    Object? userName = null,
    Object? pocketID = null,
    Object? pocketName = null,
    Object? categoryID = null,
    Object? categoryName = null,
    Object? name = null,
    Object? price = null,
    Object? balanceSnapshoot = null,
    Object? isIncome = null,
    Object? type = null,
    Object? date = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? version = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userID: null == userID
          ? _value.userID
          : userID // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      pocketID: null == pocketID
          ? _value.pocketID
          : pocketID // ignore: cast_nullable_to_non_nullable
              as String,
      pocketName: null == pocketName
          ? _value.pocketName
          : pocketName // ignore: cast_nullable_to_non_nullable
              as String,
      categoryID: null == categoryID
          ? _value.categoryID
          : categoryID // ignore: cast_nullable_to_non_nullable
              as String,
      categoryName: null == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      balanceSnapshoot: null == balanceSnapshoot
          ? _value.balanceSnapshoot
          : balanceSnapshoot // ignore: cast_nullable_to_non_nullable
              as int,
      isIncome: null == isIncome
          ? _value.isIncome
          : isIncome // ignore: cast_nullable_to_non_nullable
              as bool,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SpendDTOCopyWith<$Res> implements $SpendDTOCopyWith<$Res> {
  factory _$$_SpendDTOCopyWith(
          _$_SpendDTO value, $Res Function(_$_SpendDTO) then) =
      __$$_SpendDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'user_id') String userID,
      @JsonKey(name: 'user_name') String userName,
      @JsonKey(name: 'pocket_id') String pocketID,
      @JsonKey(name: 'pocket_name') String pocketName,
      @JsonKey(name: 'category_id') String categoryID,
      @JsonKey(name: 'category_name') String categoryName,
      String name,
      int price,
      @JsonKey(name: 'balance_snapshoot') int balanceSnapshoot,
      @JsonKey(name: 'is_income') bool isIncome,
      int type,
      String date,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt,
      int version});
}

/// @nodoc
class __$$_SpendDTOCopyWithImpl<$Res>
    extends _$SpendDTOCopyWithImpl<$Res, _$_SpendDTO>
    implements _$$_SpendDTOCopyWith<$Res> {
  __$$_SpendDTOCopyWithImpl(
      _$_SpendDTO _value, $Res Function(_$_SpendDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userID = null,
    Object? userName = null,
    Object? pocketID = null,
    Object? pocketName = null,
    Object? categoryID = null,
    Object? categoryName = null,
    Object? name = null,
    Object? price = null,
    Object? balanceSnapshoot = null,
    Object? isIncome = null,
    Object? type = null,
    Object? date = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? version = null,
  }) {
    return _then(_$_SpendDTO(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userID: null == userID
          ? _value.userID
          : userID // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      pocketID: null == pocketID
          ? _value.pocketID
          : pocketID // ignore: cast_nullable_to_non_nullable
              as String,
      pocketName: null == pocketName
          ? _value.pocketName
          : pocketName // ignore: cast_nullable_to_non_nullable
              as String,
      categoryID: null == categoryID
          ? _value.categoryID
          : categoryID // ignore: cast_nullable_to_non_nullable
              as String,
      categoryName: null == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      balanceSnapshoot: null == balanceSnapshoot
          ? _value.balanceSnapshoot
          : balanceSnapshoot // ignore: cast_nullable_to_non_nullable
              as int,
      isIncome: null == isIncome
          ? _value.isIncome
          : isIncome // ignore: cast_nullable_to_non_nullable
              as bool,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SpendDTO extends _SpendDTO {
  const _$_SpendDTO(
      {required this.id,
      @JsonKey(name: 'user_id') required this.userID,
      @JsonKey(name: 'user_name') required this.userName,
      @JsonKey(name: 'pocket_id') required this.pocketID,
      @JsonKey(name: 'pocket_name') required this.pocketName,
      @JsonKey(name: 'category_id') required this.categoryID,
      @JsonKey(name: 'category_name') required this.categoryName,
      required this.name,
      required this.price,
      @JsonKey(name: 'balance_snapshoot') required this.balanceSnapshoot,
      @JsonKey(name: 'is_income') required this.isIncome,
      required this.type,
      required this.date,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt,
      required this.version})
      : super._();

  factory _$_SpendDTO.fromJson(Map<String, dynamic> json) =>
      _$$_SpendDTOFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'user_id')
  final String userID;
  @override
  @JsonKey(name: 'user_name')
  final String userName;
  @override
  @JsonKey(name: 'pocket_id')
  final String pocketID;
  @override
  @JsonKey(name: 'pocket_name')
  final String pocketName;
  @override
  @JsonKey(name: 'category_id')
  final String categoryID;
  @override
  @JsonKey(name: 'category_name')
  final String categoryName;
  @override
  final String name;
  @override
  final int price;
  @override
  @JsonKey(name: 'balance_snapshoot')
  final int balanceSnapshoot;
  @override
  @JsonKey(name: 'is_income')
  final bool isIncome;
  @override
  final int type;
  @override
  final String date;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String updatedAt;
  @override
  final int version;

  @override
  String toString() {
    return 'SpendDTO(id: $id, userID: $userID, userName: $userName, pocketID: $pocketID, pocketName: $pocketName, categoryID: $categoryID, categoryName: $categoryName, name: $name, price: $price, balanceSnapshoot: $balanceSnapshoot, isIncome: $isIncome, type: $type, date: $date, createdAt: $createdAt, updatedAt: $updatedAt, version: $version)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SpendDTO &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userID, userID) || other.userID == userID) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.pocketID, pocketID) ||
                other.pocketID == pocketID) &&
            (identical(other.pocketName, pocketName) ||
                other.pocketName == pocketName) &&
            (identical(other.categoryID, categoryID) ||
                other.categoryID == categoryID) &&
            (identical(other.categoryName, categoryName) ||
                other.categoryName == categoryName) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.balanceSnapshoot, balanceSnapshoot) ||
                other.balanceSnapshoot == balanceSnapshoot) &&
            (identical(other.isIncome, isIncome) ||
                other.isIncome == isIncome) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.version, version) || other.version == version));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userID,
      userName,
      pocketID,
      pocketName,
      categoryID,
      categoryName,
      name,
      price,
      balanceSnapshoot,
      isIncome,
      type,
      date,
      createdAt,
      updatedAt,
      version);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SpendDTOCopyWith<_$_SpendDTO> get copyWith =>
      __$$_SpendDTOCopyWithImpl<_$_SpendDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SpendDTOToJson(
      this,
    );
  }
}

abstract class _SpendDTO extends SpendDTO {
  const factory _SpendDTO(
      {required final String id,
      @JsonKey(name: 'user_id') required final String userID,
      @JsonKey(name: 'user_name') required final String userName,
      @JsonKey(name: 'pocket_id') required final String pocketID,
      @JsonKey(name: 'pocket_name') required final String pocketName,
      @JsonKey(name: 'category_id') required final String categoryID,
      @JsonKey(name: 'category_name') required final String categoryName,
      required final String name,
      required final int price,
      @JsonKey(name: 'balance_snapshoot') required final int balanceSnapshoot,
      @JsonKey(name: 'is_income') required final bool isIncome,
      required final int type,
      required final String date,
      @JsonKey(name: 'created_at') required final String createdAt,
      @JsonKey(name: 'updated_at') required final String updatedAt,
      required final int version}) = _$_SpendDTO;
  const _SpendDTO._() : super._();

  factory _SpendDTO.fromJson(Map<String, dynamic> json) = _$_SpendDTO.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'user_id')
  String get userID;
  @override
  @JsonKey(name: 'user_name')
  String get userName;
  @override
  @JsonKey(name: 'pocket_id')
  String get pocketID;
  @override
  @JsonKey(name: 'pocket_name')
  String get pocketName;
  @override
  @JsonKey(name: 'category_id')
  String get categoryID;
  @override
  @JsonKey(name: 'category_name')
  String get categoryName;
  @override
  String get name;
  @override
  int get price;
  @override
  @JsonKey(name: 'balance_snapshoot')
  int get balanceSnapshoot;
  @override
  @JsonKey(name: 'is_income')
  bool get isIncome;
  @override
  int get type;
  @override
  String get date;
  @override
  @JsonKey(name: 'created_at')
  String get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String get updatedAt;
  @override
  int get version;
  @override
  @JsonKey(ignore: true)
  _$$_SpendDTOCopyWith<_$_SpendDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

SpendReqDTO _$SpendReqDTOFromJson(Map<String, dynamic> json) {
  return _SpendReqDTO.fromJson(json);
}

/// @nodoc
mixin _$SpendReqDTO {
  @JsonKey(name: 'pocket_id')
  String get pocketID => throw _privateConstructorUsedError;
  @JsonKey(name: 'category_id')
  String get categoryID => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_income')
  bool get isIncome => throw _privateConstructorUsedError;
  int get type => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  int get version => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpendReqDTOCopyWith<SpendReqDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpendReqDTOCopyWith<$Res> {
  factory $SpendReqDTOCopyWith(
          SpendReqDTO value, $Res Function(SpendReqDTO) then) =
      _$SpendReqDTOCopyWithImpl<$Res, SpendReqDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'pocket_id') String pocketID,
      @JsonKey(name: 'category_id') String categoryID,
      String name,
      int price,
      @JsonKey(name: 'is_income') bool isIncome,
      int type,
      String date,
      int version});
}

/// @nodoc
class _$SpendReqDTOCopyWithImpl<$Res, $Val extends SpendReqDTO>
    implements $SpendReqDTOCopyWith<$Res> {
  _$SpendReqDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pocketID = null,
    Object? categoryID = null,
    Object? name = null,
    Object? price = null,
    Object? isIncome = null,
    Object? type = null,
    Object? date = null,
    Object? version = null,
  }) {
    return _then(_value.copyWith(
      pocketID: null == pocketID
          ? _value.pocketID
          : pocketID // ignore: cast_nullable_to_non_nullable
              as String,
      categoryID: null == categoryID
          ? _value.categoryID
          : categoryID // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      isIncome: null == isIncome
          ? _value.isIncome
          : isIncome // ignore: cast_nullable_to_non_nullable
              as bool,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SpendReqDTOCopyWith<$Res>
    implements $SpendReqDTOCopyWith<$Res> {
  factory _$$_SpendReqDTOCopyWith(
          _$_SpendReqDTO value, $Res Function(_$_SpendReqDTO) then) =
      __$$_SpendReqDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'pocket_id') String pocketID,
      @JsonKey(name: 'category_id') String categoryID,
      String name,
      int price,
      @JsonKey(name: 'is_income') bool isIncome,
      int type,
      String date,
      int version});
}

/// @nodoc
class __$$_SpendReqDTOCopyWithImpl<$Res>
    extends _$SpendReqDTOCopyWithImpl<$Res, _$_SpendReqDTO>
    implements _$$_SpendReqDTOCopyWith<$Res> {
  __$$_SpendReqDTOCopyWithImpl(
      _$_SpendReqDTO _value, $Res Function(_$_SpendReqDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pocketID = null,
    Object? categoryID = null,
    Object? name = null,
    Object? price = null,
    Object? isIncome = null,
    Object? type = null,
    Object? date = null,
    Object? version = null,
  }) {
    return _then(_$_SpendReqDTO(
      pocketID: null == pocketID
          ? _value.pocketID
          : pocketID // ignore: cast_nullable_to_non_nullable
              as String,
      categoryID: null == categoryID
          ? _value.categoryID
          : categoryID // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      isIncome: null == isIncome
          ? _value.isIncome
          : isIncome // ignore: cast_nullable_to_non_nullable
              as bool,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SpendReqDTO extends _SpendReqDTO {
  const _$_SpendReqDTO(
      {@JsonKey(name: 'pocket_id') required this.pocketID,
      @JsonKey(name: 'category_id') required this.categoryID,
      required this.name,
      required this.price,
      @JsonKey(name: 'is_income') required this.isIncome,
      required this.type,
      required this.date,
      required this.version})
      : super._();

  factory _$_SpendReqDTO.fromJson(Map<String, dynamic> json) =>
      _$$_SpendReqDTOFromJson(json);

  @override
  @JsonKey(name: 'pocket_id')
  final String pocketID;
  @override
  @JsonKey(name: 'category_id')
  final String categoryID;
  @override
  final String name;
  @override
  final int price;
  @override
  @JsonKey(name: 'is_income')
  final bool isIncome;
  @override
  final int type;
  @override
  final String date;
  @override
  final int version;

  @override
  String toString() {
    return 'SpendReqDTO(pocketID: $pocketID, categoryID: $categoryID, name: $name, price: $price, isIncome: $isIncome, type: $type, date: $date, version: $version)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SpendReqDTO &&
            (identical(other.pocketID, pocketID) ||
                other.pocketID == pocketID) &&
            (identical(other.categoryID, categoryID) ||
                other.categoryID == categoryID) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.isIncome, isIncome) ||
                other.isIncome == isIncome) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.version, version) || other.version == version));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, pocketID, categoryID, name,
      price, isIncome, type, date, version);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SpendReqDTOCopyWith<_$_SpendReqDTO> get copyWith =>
      __$$_SpendReqDTOCopyWithImpl<_$_SpendReqDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SpendReqDTOToJson(
      this,
    );
  }
}

abstract class _SpendReqDTO extends SpendReqDTO {
  const factory _SpendReqDTO(
      {@JsonKey(name: 'pocket_id') required final String pocketID,
      @JsonKey(name: 'category_id') required final String categoryID,
      required final String name,
      required final int price,
      @JsonKey(name: 'is_income') required final bool isIncome,
      required final int type,
      required final String date,
      required final int version}) = _$_SpendReqDTO;
  const _SpendReqDTO._() : super._();

  factory _SpendReqDTO.fromJson(Map<String, dynamic> json) =
      _$_SpendReqDTO.fromJson;

  @override
  @JsonKey(name: 'pocket_id')
  String get pocketID;
  @override
  @JsonKey(name: 'category_id')
  String get categoryID;
  @override
  String get name;
  @override
  int get price;
  @override
  @JsonKey(name: 'is_income')
  bool get isIncome;
  @override
  int get type;
  @override
  String get date;
  @override
  int get version;
  @override
  @JsonKey(ignore: true)
  _$$_SpendReqDTOCopyWith<_$_SpendReqDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
