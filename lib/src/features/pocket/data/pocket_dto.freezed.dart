// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pocket_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PocketResponseDTO _$PocketResponseDTOFromJson(Map<String, dynamic> json) {
  return _PocketResponseDTO.fromJson(json);
}

/// @nodoc
mixin _$PocketResponseDTO {
  @JsonKey(name: 'data')
  PocketDTO? get data => throw _privateConstructorUsedError;
  @JsonKey(name: 'error')
  String? get error => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PocketResponseDTOCopyWith<PocketResponseDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PocketResponseDTOCopyWith<$Res> {
  factory $PocketResponseDTOCopyWith(
          PocketResponseDTO value, $Res Function(PocketResponseDTO) then) =
      _$PocketResponseDTOCopyWithImpl<$Res, PocketResponseDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'data') PocketDTO? data,
      @JsonKey(name: 'error') String? error});

  $PocketDTOCopyWith<$Res>? get data;
}

/// @nodoc
class _$PocketResponseDTOCopyWithImpl<$Res, $Val extends PocketResponseDTO>
    implements $PocketResponseDTOCopyWith<$Res> {
  _$PocketResponseDTOCopyWithImpl(this._value, this._then);

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
              as PocketDTO?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PocketDTOCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $PocketDTOCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PocketResponseDTOCopyWith<$Res>
    implements $PocketResponseDTOCopyWith<$Res> {
  factory _$$_PocketResponseDTOCopyWith(_$_PocketResponseDTO value,
          $Res Function(_$_PocketResponseDTO) then) =
      __$$_PocketResponseDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'data') PocketDTO? data,
      @JsonKey(name: 'error') String? error});

  @override
  $PocketDTOCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_PocketResponseDTOCopyWithImpl<$Res>
    extends _$PocketResponseDTOCopyWithImpl<$Res, _$_PocketResponseDTO>
    implements _$$_PocketResponseDTOCopyWith<$Res> {
  __$$_PocketResponseDTOCopyWithImpl(
      _$_PocketResponseDTO _value, $Res Function(_$_PocketResponseDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? error = freezed,
  }) {
    return _then(_$_PocketResponseDTO(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PocketDTO?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PocketResponseDTO extends _PocketResponseDTO {
  const _$_PocketResponseDTO(
      {@JsonKey(name: 'data') required this.data,
      @JsonKey(name: 'error') required this.error})
      : super._();

  factory _$_PocketResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$$_PocketResponseDTOFromJson(json);

  @override
  @JsonKey(name: 'data')
  final PocketDTO? data;
  @override
  @JsonKey(name: 'error')
  final String? error;

  @override
  String toString() {
    return 'PocketResponseDTO(data: $data, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PocketResponseDTO &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PocketResponseDTOCopyWith<_$_PocketResponseDTO> get copyWith =>
      __$$_PocketResponseDTOCopyWithImpl<_$_PocketResponseDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PocketResponseDTOToJson(
      this,
    );
  }
}

abstract class _PocketResponseDTO extends PocketResponseDTO {
  const factory _PocketResponseDTO(
          {@JsonKey(name: 'data') required final PocketDTO? data,
          @JsonKey(name: 'error') required final String? error}) =
      _$_PocketResponseDTO;
  const _PocketResponseDTO._() : super._();

  factory _PocketResponseDTO.fromJson(Map<String, dynamic> json) =
      _$_PocketResponseDTO.fromJson;

  @override
  @JsonKey(name: 'data')
  PocketDTO? get data;
  @override
  @JsonKey(name: 'error')
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$_PocketResponseDTOCopyWith<_$_PocketResponseDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

PocketDTO _$PocketDTOFromJson(Map<String, dynamic> json) {
  return _PocketDTO.fromJson(json);
}

/// @nodoc
mixin _$PocketDTO {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'pocket_name')
  String get pocketName => throw _privateConstructorUsedError;
  int get balance => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;
  int get icon => throw _privateConstructorUsedError;
  int get level => throw _privateConstructorUsedError;
  @JsonKey(name: 'owner_id')
  String get ownerID => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: [], name: "editor_id")
  List<String> get editorID => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: [], name: "watcher_id")
  List<String> get watcherID => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: [])
  List<PocketUserDTO> get users => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PocketDTOCopyWith<PocketDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PocketDTOCopyWith<$Res> {
  factory $PocketDTOCopyWith(PocketDTO value, $Res Function(PocketDTO) then) =
      _$PocketDTOCopyWithImpl<$Res, PocketDTO>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'pocket_name') String pocketName,
      int balance,
      String currency,
      int icon,
      int level,
      @JsonKey(name: 'owner_id') String ownerID,
      @JsonKey(defaultValue: [], name: "editor_id") List<String> editorID,
      @JsonKey(defaultValue: [], name: "watcher_id") List<String> watcherID,
      @JsonKey(defaultValue: []) List<PocketUserDTO> users,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt});
}

/// @nodoc
class _$PocketDTOCopyWithImpl<$Res, $Val extends PocketDTO>
    implements $PocketDTOCopyWith<$Res> {
  _$PocketDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? pocketName = null,
    Object? balance = null,
    Object? currency = null,
    Object? icon = null,
    Object? level = null,
    Object? ownerID = null,
    Object? editorID = null,
    Object? watcherID = null,
    Object? users = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      pocketName: null == pocketName
          ? _value.pocketName
          : pocketName // ignore: cast_nullable_to_non_nullable
              as String,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as int,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as int,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
      ownerID: null == ownerID
          ? _value.ownerID
          : ownerID // ignore: cast_nullable_to_non_nullable
              as String,
      editorID: null == editorID
          ? _value.editorID
          : editorID // ignore: cast_nullable_to_non_nullable
              as List<String>,
      watcherID: null == watcherID
          ? _value.watcherID
          : watcherID // ignore: cast_nullable_to_non_nullable
              as List<String>,
      users: null == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<PocketUserDTO>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PocketDTOCopyWith<$Res> implements $PocketDTOCopyWith<$Res> {
  factory _$$_PocketDTOCopyWith(
          _$_PocketDTO value, $Res Function(_$_PocketDTO) then) =
      __$$_PocketDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'pocket_name') String pocketName,
      int balance,
      String currency,
      int icon,
      int level,
      @JsonKey(name: 'owner_id') String ownerID,
      @JsonKey(defaultValue: [], name: "editor_id") List<String> editorID,
      @JsonKey(defaultValue: [], name: "watcher_id") List<String> watcherID,
      @JsonKey(defaultValue: []) List<PocketUserDTO> users,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt});
}

/// @nodoc
class __$$_PocketDTOCopyWithImpl<$Res>
    extends _$PocketDTOCopyWithImpl<$Res, _$_PocketDTO>
    implements _$$_PocketDTOCopyWith<$Res> {
  __$$_PocketDTOCopyWithImpl(
      _$_PocketDTO _value, $Res Function(_$_PocketDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? pocketName = null,
    Object? balance = null,
    Object? currency = null,
    Object? icon = null,
    Object? level = null,
    Object? ownerID = null,
    Object? editorID = null,
    Object? watcherID = null,
    Object? users = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$_PocketDTO(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      pocketName: null == pocketName
          ? _value.pocketName
          : pocketName // ignore: cast_nullable_to_non_nullable
              as String,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as int,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as int,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
      ownerID: null == ownerID
          ? _value.ownerID
          : ownerID // ignore: cast_nullable_to_non_nullable
              as String,
      editorID: null == editorID
          ? _value._editorID
          : editorID // ignore: cast_nullable_to_non_nullable
              as List<String>,
      watcherID: null == watcherID
          ? _value._watcherID
          : watcherID // ignore: cast_nullable_to_non_nullable
              as List<String>,
      users: null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<PocketUserDTO>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PocketDTO extends _PocketDTO {
  const _$_PocketDTO(
      {required this.id,
      @JsonKey(name: 'pocket_name') required this.pocketName,
      required this.balance,
      required this.currency,
      required this.icon,
      required this.level,
      @JsonKey(name: 'owner_id') required this.ownerID,
      @JsonKey(defaultValue: [], name: "editor_id")
      required final List<String> editorID,
      @JsonKey(defaultValue: [], name: "watcher_id")
      required final List<String> watcherID,
      @JsonKey(defaultValue: []) required final List<PocketUserDTO> users,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt})
      : _editorID = editorID,
        _watcherID = watcherID,
        _users = users,
        super._();

  factory _$_PocketDTO.fromJson(Map<String, dynamic> json) =>
      _$$_PocketDTOFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'pocket_name')
  final String pocketName;
  @override
  final int balance;
  @override
  final String currency;
  @override
  final int icon;
  @override
  final int level;
  @override
  @JsonKey(name: 'owner_id')
  final String ownerID;
  final List<String> _editorID;
  @override
  @JsonKey(defaultValue: [], name: "editor_id")
  List<String> get editorID {
    if (_editorID is EqualUnmodifiableListView) return _editorID;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_editorID);
  }

  final List<String> _watcherID;
  @override
  @JsonKey(defaultValue: [], name: "watcher_id")
  List<String> get watcherID {
    if (_watcherID is EqualUnmodifiableListView) return _watcherID;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_watcherID);
  }

  final List<PocketUserDTO> _users;
  @override
  @JsonKey(defaultValue: [])
  List<PocketUserDTO> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  @override
  @JsonKey(name: 'created_at')
  final String createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String updatedAt;

  @override
  String toString() {
    return 'PocketDTO(id: $id, pocketName: $pocketName, balance: $balance, currency: $currency, icon: $icon, level: $level, ownerID: $ownerID, editorID: $editorID, watcherID: $watcherID, users: $users, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PocketDTO &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.pocketName, pocketName) ||
                other.pocketName == pocketName) &&
            (identical(other.balance, balance) || other.balance == balance) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.ownerID, ownerID) || other.ownerID == ownerID) &&
            const DeepCollectionEquality().equals(other._editorID, _editorID) &&
            const DeepCollectionEquality()
                .equals(other._watcherID, _watcherID) &&
            const DeepCollectionEquality().equals(other._users, _users) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      pocketName,
      balance,
      currency,
      icon,
      level,
      ownerID,
      const DeepCollectionEquality().hash(_editorID),
      const DeepCollectionEquality().hash(_watcherID),
      const DeepCollectionEquality().hash(_users),
      createdAt,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PocketDTOCopyWith<_$_PocketDTO> get copyWith =>
      __$$_PocketDTOCopyWithImpl<_$_PocketDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PocketDTOToJson(
      this,
    );
  }
}

abstract class _PocketDTO extends PocketDTO {
  const factory _PocketDTO(
          {required final String id,
          @JsonKey(name: 'pocket_name') required final String pocketName,
          required final int balance,
          required final String currency,
          required final int icon,
          required final int level,
          @JsonKey(name: 'owner_id') required final String ownerID,
          @JsonKey(defaultValue: [], name: "editor_id")
          required final List<String> editorID,
          @JsonKey(defaultValue: [], name: "watcher_id")
          required final List<String> watcherID,
          @JsonKey(defaultValue: []) required final List<PocketUserDTO> users,
          @JsonKey(name: 'created_at') required final String createdAt,
          @JsonKey(name: 'updated_at') required final String updatedAt}) =
      _$_PocketDTO;
  const _PocketDTO._() : super._();

  factory _PocketDTO.fromJson(Map<String, dynamic> json) =
      _$_PocketDTO.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'pocket_name')
  String get pocketName;
  @override
  int get balance;
  @override
  String get currency;
  @override
  int get icon;
  @override
  int get level;
  @override
  @JsonKey(name: 'owner_id')
  String get ownerID;
  @override
  @JsonKey(defaultValue: [], name: "editor_id")
  List<String> get editorID;
  @override
  @JsonKey(defaultValue: [], name: "watcher_id")
  List<String> get watcherID;
  @override
  @JsonKey(defaultValue: [])
  List<PocketUserDTO> get users;
  @override
  @JsonKey(name: 'created_at')
  String get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_PocketDTOCopyWith<_$_PocketDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

PocketUserDTO _$PocketUserDTOFromJson(Map<String, dynamic> json) {
  return _PocketUserDTO.fromJson(json);
}

/// @nodoc
mixin _$PocketUserDTO {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get role => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PocketUserDTOCopyWith<PocketUserDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PocketUserDTOCopyWith<$Res> {
  factory $PocketUserDTOCopyWith(
          PocketUserDTO value, $Res Function(PocketUserDTO) then) =
      _$PocketUserDTOCopyWithImpl<$Res, PocketUserDTO>;
  @useResult
  $Res call({String id, String name, String role});
}

/// @nodoc
class _$PocketUserDTOCopyWithImpl<$Res, $Val extends PocketUserDTO>
    implements $PocketUserDTOCopyWith<$Res> {
  _$PocketUserDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? role = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PocketUserDTOCopyWith<$Res>
    implements $PocketUserDTOCopyWith<$Res> {
  factory _$$_PocketUserDTOCopyWith(
          _$_PocketUserDTO value, $Res Function(_$_PocketUserDTO) then) =
      __$$_PocketUserDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, String role});
}

/// @nodoc
class __$$_PocketUserDTOCopyWithImpl<$Res>
    extends _$PocketUserDTOCopyWithImpl<$Res, _$_PocketUserDTO>
    implements _$$_PocketUserDTOCopyWith<$Res> {
  __$$_PocketUserDTOCopyWithImpl(
      _$_PocketUserDTO _value, $Res Function(_$_PocketUserDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? role = null,
  }) {
    return _then(_$_PocketUserDTO(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PocketUserDTO extends _PocketUserDTO {
  const _$_PocketUserDTO(
      {required this.id, required this.name, required this.role})
      : super._();

  factory _$_PocketUserDTO.fromJson(Map<String, dynamic> json) =>
      _$$_PocketUserDTOFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String role;

  @override
  String toString() {
    return 'PocketUserDTO(id: $id, name: $name, role: $role)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PocketUserDTO &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.role, role) || other.role == role));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, role);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PocketUserDTOCopyWith<_$_PocketUserDTO> get copyWith =>
      __$$_PocketUserDTOCopyWithImpl<_$_PocketUserDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PocketUserDTOToJson(
      this,
    );
  }
}

abstract class _PocketUserDTO extends PocketUserDTO {
  const factory _PocketUserDTO(
      {required final String id,
      required final String name,
      required final String role}) = _$_PocketUserDTO;
  const _PocketUserDTO._() : super._();

  factory _PocketUserDTO.fromJson(Map<String, dynamic> json) =
      _$_PocketUserDTO.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get role;
  @override
  @JsonKey(ignore: true)
  _$$_PocketUserDTOCopyWith<_$_PocketUserDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
