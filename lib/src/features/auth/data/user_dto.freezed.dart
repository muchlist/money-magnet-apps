// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LoginResponseDTO _$LoginResponseDTOFromJson(Map<String, dynamic> json) {
  return _LoginResponseDTO.fromJson(json);
}

/// @nodoc
mixin _$LoginResponseDTO {
  @JsonKey(name: 'data')
  LoginDTO? get data => throw _privateConstructorUsedError;
  @JsonKey(name: 'error')
  String? get error => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginResponseDTOCopyWith<LoginResponseDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginResponseDTOCopyWith<$Res> {
  factory $LoginResponseDTOCopyWith(
          LoginResponseDTO value, $Res Function(LoginResponseDTO) then) =
      _$LoginResponseDTOCopyWithImpl<$Res, LoginResponseDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'data') LoginDTO? data,
      @JsonKey(name: 'error') String? error});

  $LoginDTOCopyWith<$Res>? get data;
}

/// @nodoc
class _$LoginResponseDTOCopyWithImpl<$Res, $Val extends LoginResponseDTO>
    implements $LoginResponseDTOCopyWith<$Res> {
  _$LoginResponseDTOCopyWithImpl(this._value, this._then);

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
              as LoginDTO?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LoginDTOCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $LoginDTOCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_LoginResponseDTOCopyWith<$Res>
    implements $LoginResponseDTOCopyWith<$Res> {
  factory _$$_LoginResponseDTOCopyWith(
          _$_LoginResponseDTO value, $Res Function(_$_LoginResponseDTO) then) =
      __$$_LoginResponseDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'data') LoginDTO? data,
      @JsonKey(name: 'error') String? error});

  @override
  $LoginDTOCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_LoginResponseDTOCopyWithImpl<$Res>
    extends _$LoginResponseDTOCopyWithImpl<$Res, _$_LoginResponseDTO>
    implements _$$_LoginResponseDTOCopyWith<$Res> {
  __$$_LoginResponseDTOCopyWithImpl(
      _$_LoginResponseDTO _value, $Res Function(_$_LoginResponseDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? error = freezed,
  }) {
    return _then(_$_LoginResponseDTO(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as LoginDTO?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LoginResponseDTO extends _LoginResponseDTO {
  const _$_LoginResponseDTO(
      {@JsonKey(name: 'data') required this.data,
      @JsonKey(name: 'error') required this.error})
      : super._();

  factory _$_LoginResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$$_LoginResponseDTOFromJson(json);

  @override
  @JsonKey(name: 'data')
  final LoginDTO? data;
  @override
  @JsonKey(name: 'error')
  final String? error;

  @override
  String toString() {
    return 'LoginResponseDTO(data: $data, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginResponseDTO &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginResponseDTOCopyWith<_$_LoginResponseDTO> get copyWith =>
      __$$_LoginResponseDTOCopyWithImpl<_$_LoginResponseDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoginResponseDTOToJson(
      this,
    );
  }
}

abstract class _LoginResponseDTO extends LoginResponseDTO {
  const factory _LoginResponseDTO(
          {@JsonKey(name: 'data') required final LoginDTO? data,
          @JsonKey(name: 'error') required final String? error}) =
      _$_LoginResponseDTO;
  const _LoginResponseDTO._() : super._();

  factory _LoginResponseDTO.fromJson(Map<String, dynamic> json) =
      _$_LoginResponseDTO.fromJson;

  @override
  @JsonKey(name: 'data')
  LoginDTO? get data;
  @override
  @JsonKey(name: 'error')
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$_LoginResponseDTOCopyWith<_$_LoginResponseDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

LoginDTO _$LoginDTOFromJson(Map<String, dynamic> json) {
  return _LoginDTO.fromJson(json);
}

/// @nodoc
mixin _$LoginDTO {
  String get id => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: [])
  List<String> get roles => throw _privateConstructorUsedError;
  @JsonKey(name: 'access_token')
  String get accessToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'refresh_token')
  String get refreshToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'access_token_expired')
  int get accessTokenExpired => throw _privateConstructorUsedError;
  @JsonKey(name: 'refresh_token_expired')
  int get refreshTokenExpired => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginDTOCopyWith<LoginDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginDTOCopyWith<$Res> {
  factory $LoginDTOCopyWith(LoginDTO value, $Res Function(LoginDTO) then) =
      _$LoginDTOCopyWithImpl<$Res, LoginDTO>;
  @useResult
  $Res call(
      {String id,
      String email,
      String name,
      @JsonKey(defaultValue: []) List<String> roles,
      @JsonKey(name: 'access_token') String accessToken,
      @JsonKey(name: 'refresh_token') String refreshToken,
      @JsonKey(name: 'access_token_expired') int accessTokenExpired,
      @JsonKey(name: 'refresh_token_expired') int refreshTokenExpired});
}

/// @nodoc
class _$LoginDTOCopyWithImpl<$Res, $Val extends LoginDTO>
    implements $LoginDTOCopyWith<$Res> {
  _$LoginDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? name = null,
    Object? roles = null,
    Object? accessToken = null,
    Object? refreshToken = null,
    Object? accessTokenExpired = null,
    Object? refreshTokenExpired = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      roles: null == roles
          ? _value.roles
          : roles // ignore: cast_nullable_to_non_nullable
              as List<String>,
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      accessTokenExpired: null == accessTokenExpired
          ? _value.accessTokenExpired
          : accessTokenExpired // ignore: cast_nullable_to_non_nullable
              as int,
      refreshTokenExpired: null == refreshTokenExpired
          ? _value.refreshTokenExpired
          : refreshTokenExpired // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LoginDTOCopyWith<$Res> implements $LoginDTOCopyWith<$Res> {
  factory _$$_LoginDTOCopyWith(
          _$_LoginDTO value, $Res Function(_$_LoginDTO) then) =
      __$$_LoginDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String email,
      String name,
      @JsonKey(defaultValue: []) List<String> roles,
      @JsonKey(name: 'access_token') String accessToken,
      @JsonKey(name: 'refresh_token') String refreshToken,
      @JsonKey(name: 'access_token_expired') int accessTokenExpired,
      @JsonKey(name: 'refresh_token_expired') int refreshTokenExpired});
}

/// @nodoc
class __$$_LoginDTOCopyWithImpl<$Res>
    extends _$LoginDTOCopyWithImpl<$Res, _$_LoginDTO>
    implements _$$_LoginDTOCopyWith<$Res> {
  __$$_LoginDTOCopyWithImpl(
      _$_LoginDTO _value, $Res Function(_$_LoginDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? name = null,
    Object? roles = null,
    Object? accessToken = null,
    Object? refreshToken = null,
    Object? accessTokenExpired = null,
    Object? refreshTokenExpired = null,
  }) {
    return _then(_$_LoginDTO(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      roles: null == roles
          ? _value._roles
          : roles // ignore: cast_nullable_to_non_nullable
              as List<String>,
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      accessTokenExpired: null == accessTokenExpired
          ? _value.accessTokenExpired
          : accessTokenExpired // ignore: cast_nullable_to_non_nullable
              as int,
      refreshTokenExpired: null == refreshTokenExpired
          ? _value.refreshTokenExpired
          : refreshTokenExpired // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LoginDTO extends _LoginDTO {
  const _$_LoginDTO(
      {required this.id,
      required this.email,
      required this.name,
      @JsonKey(defaultValue: [])
          required final List<String> roles,
      @JsonKey(name: 'access_token')
          required this.accessToken,
      @JsonKey(name: 'refresh_token')
          required this.refreshToken,
      @JsonKey(name: 'access_token_expired')
          required this.accessTokenExpired,
      @JsonKey(name: 'refresh_token_expired')
          required this.refreshTokenExpired})
      : _roles = roles,
        super._();

  factory _$_LoginDTO.fromJson(Map<String, dynamic> json) =>
      _$$_LoginDTOFromJson(json);

  @override
  final String id;
  @override
  final String email;
  @override
  final String name;
  final List<String> _roles;
  @override
  @JsonKey(defaultValue: [])
  List<String> get roles {
    if (_roles is EqualUnmodifiableListView) return _roles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_roles);
  }

  @override
  @JsonKey(name: 'access_token')
  final String accessToken;
  @override
  @JsonKey(name: 'refresh_token')
  final String refreshToken;
  @override
  @JsonKey(name: 'access_token_expired')
  final int accessTokenExpired;
  @override
  @JsonKey(name: 'refresh_token_expired')
  final int refreshTokenExpired;

  @override
  String toString() {
    return 'LoginDTO(id: $id, email: $email, name: $name, roles: $roles, accessToken: $accessToken, refreshToken: $refreshToken, accessTokenExpired: $accessTokenExpired, refreshTokenExpired: $refreshTokenExpired)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginDTO &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._roles, _roles) &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken) &&
            (identical(other.accessTokenExpired, accessTokenExpired) ||
                other.accessTokenExpired == accessTokenExpired) &&
            (identical(other.refreshTokenExpired, refreshTokenExpired) ||
                other.refreshTokenExpired == refreshTokenExpired));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      email,
      name,
      const DeepCollectionEquality().hash(_roles),
      accessToken,
      refreshToken,
      accessTokenExpired,
      refreshTokenExpired);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginDTOCopyWith<_$_LoginDTO> get copyWith =>
      __$$_LoginDTOCopyWithImpl<_$_LoginDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoginDTOToJson(
      this,
    );
  }
}

abstract class _LoginDTO extends LoginDTO {
  const factory _LoginDTO(
      {required final String id,
      required final String email,
      required final String name,
      @JsonKey(defaultValue: [])
          required final List<String> roles,
      @JsonKey(name: 'access_token')
          required final String accessToken,
      @JsonKey(name: 'refresh_token')
          required final String refreshToken,
      @JsonKey(name: 'access_token_expired')
          required final int accessTokenExpired,
      @JsonKey(name: 'refresh_token_expired')
          required final int refreshTokenExpired}) = _$_LoginDTO;
  const _LoginDTO._() : super._();

  factory _LoginDTO.fromJson(Map<String, dynamic> json) = _$_LoginDTO.fromJson;

  @override
  String get id;
  @override
  String get email;
  @override
  String get name;
  @override
  @JsonKey(defaultValue: [])
  List<String> get roles;
  @override
  @JsonKey(name: 'access_token')
  String get accessToken;
  @override
  @JsonKey(name: 'refresh_token')
  String get refreshToken;
  @override
  @JsonKey(name: 'access_token_expired')
  int get accessTokenExpired;
  @override
  @JsonKey(name: 'refresh_token_expired')
  int get refreshTokenExpired;
  @override
  @JsonKey(ignore: true)
  _$$_LoginDTOCopyWith<_$_LoginDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

RefreshResponseDTO _$RefreshResponseDTOFromJson(Map<String, dynamic> json) {
  return _RefreshResponseDTO.fromJson(json);
}

/// @nodoc
mixin _$RefreshResponseDTO {
  @JsonKey(name: 'data')
  RefreshDTO? get data => throw _privateConstructorUsedError;
  @JsonKey(name: 'error')
  String? get error => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RefreshResponseDTOCopyWith<RefreshResponseDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RefreshResponseDTOCopyWith<$Res> {
  factory $RefreshResponseDTOCopyWith(
          RefreshResponseDTO value, $Res Function(RefreshResponseDTO) then) =
      _$RefreshResponseDTOCopyWithImpl<$Res, RefreshResponseDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'data') RefreshDTO? data,
      @JsonKey(name: 'error') String? error});

  $RefreshDTOCopyWith<$Res>? get data;
}

/// @nodoc
class _$RefreshResponseDTOCopyWithImpl<$Res, $Val extends RefreshResponseDTO>
    implements $RefreshResponseDTOCopyWith<$Res> {
  _$RefreshResponseDTOCopyWithImpl(this._value, this._then);

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
              as RefreshDTO?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RefreshDTOCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $RefreshDTOCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_RefreshResponseDTOCopyWith<$Res>
    implements $RefreshResponseDTOCopyWith<$Res> {
  factory _$$_RefreshResponseDTOCopyWith(_$_RefreshResponseDTO value,
          $Res Function(_$_RefreshResponseDTO) then) =
      __$$_RefreshResponseDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'data') RefreshDTO? data,
      @JsonKey(name: 'error') String? error});

  @override
  $RefreshDTOCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_RefreshResponseDTOCopyWithImpl<$Res>
    extends _$RefreshResponseDTOCopyWithImpl<$Res, _$_RefreshResponseDTO>
    implements _$$_RefreshResponseDTOCopyWith<$Res> {
  __$$_RefreshResponseDTOCopyWithImpl(
      _$_RefreshResponseDTO _value, $Res Function(_$_RefreshResponseDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? error = freezed,
  }) {
    return _then(_$_RefreshResponseDTO(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as RefreshDTO?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RefreshResponseDTO extends _RefreshResponseDTO {
  const _$_RefreshResponseDTO(
      {@JsonKey(name: 'data') required this.data,
      @JsonKey(name: 'error') required this.error})
      : super._();

  factory _$_RefreshResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$$_RefreshResponseDTOFromJson(json);

  @override
  @JsonKey(name: 'data')
  final RefreshDTO? data;
  @override
  @JsonKey(name: 'error')
  final String? error;

  @override
  String toString() {
    return 'RefreshResponseDTO(data: $data, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RefreshResponseDTO &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RefreshResponseDTOCopyWith<_$_RefreshResponseDTO> get copyWith =>
      __$$_RefreshResponseDTOCopyWithImpl<_$_RefreshResponseDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RefreshResponseDTOToJson(
      this,
    );
  }
}

abstract class _RefreshResponseDTO extends RefreshResponseDTO {
  const factory _RefreshResponseDTO(
          {@JsonKey(name: 'data') required final RefreshDTO? data,
          @JsonKey(name: 'error') required final String? error}) =
      _$_RefreshResponseDTO;
  const _RefreshResponseDTO._() : super._();

  factory _RefreshResponseDTO.fromJson(Map<String, dynamic> json) =
      _$_RefreshResponseDTO.fromJson;

  @override
  @JsonKey(name: 'data')
  RefreshDTO? get data;
  @override
  @JsonKey(name: 'error')
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$_RefreshResponseDTOCopyWith<_$_RefreshResponseDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

RefreshDTO _$RefreshDTOFromJson(Map<String, dynamic> json) {
  return _RefreshDTO.fromJson(json);
}

/// @nodoc
mixin _$RefreshDTO {
  @JsonKey(name: 'access_token')
  String get accessToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'access_token_expired')
  int get accessTokenExpired => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RefreshDTOCopyWith<RefreshDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RefreshDTOCopyWith<$Res> {
  factory $RefreshDTOCopyWith(
          RefreshDTO value, $Res Function(RefreshDTO) then) =
      _$RefreshDTOCopyWithImpl<$Res, RefreshDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'access_token') String accessToken,
      @JsonKey(name: 'access_token_expired') int accessTokenExpired});
}

/// @nodoc
class _$RefreshDTOCopyWithImpl<$Res, $Val extends RefreshDTO>
    implements $RefreshDTOCopyWith<$Res> {
  _$RefreshDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? accessTokenExpired = null,
  }) {
    return _then(_value.copyWith(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      accessTokenExpired: null == accessTokenExpired
          ? _value.accessTokenExpired
          : accessTokenExpired // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RefreshDTOCopyWith<$Res>
    implements $RefreshDTOCopyWith<$Res> {
  factory _$$_RefreshDTOCopyWith(
          _$_RefreshDTO value, $Res Function(_$_RefreshDTO) then) =
      __$$_RefreshDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'access_token') String accessToken,
      @JsonKey(name: 'access_token_expired') int accessTokenExpired});
}

/// @nodoc
class __$$_RefreshDTOCopyWithImpl<$Res>
    extends _$RefreshDTOCopyWithImpl<$Res, _$_RefreshDTO>
    implements _$$_RefreshDTOCopyWith<$Res> {
  __$$_RefreshDTOCopyWithImpl(
      _$_RefreshDTO _value, $Res Function(_$_RefreshDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? accessTokenExpired = null,
  }) {
    return _then(_$_RefreshDTO(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      accessTokenExpired: null == accessTokenExpired
          ? _value.accessTokenExpired
          : accessTokenExpired // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RefreshDTO extends _RefreshDTO {
  const _$_RefreshDTO(
      {@JsonKey(name: 'access_token') required this.accessToken,
      @JsonKey(name: 'access_token_expired') required this.accessTokenExpired})
      : super._();

  factory _$_RefreshDTO.fromJson(Map<String, dynamic> json) =>
      _$$_RefreshDTOFromJson(json);

  @override
  @JsonKey(name: 'access_token')
  final String accessToken;
  @override
  @JsonKey(name: 'access_token_expired')
  final int accessTokenExpired;

  @override
  String toString() {
    return 'RefreshDTO(accessToken: $accessToken, accessTokenExpired: $accessTokenExpired)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RefreshDTO &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.accessTokenExpired, accessTokenExpired) ||
                other.accessTokenExpired == accessTokenExpired));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, accessToken, accessTokenExpired);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RefreshDTOCopyWith<_$_RefreshDTO> get copyWith =>
      __$$_RefreshDTOCopyWithImpl<_$_RefreshDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RefreshDTOToJson(
      this,
    );
  }
}

abstract class _RefreshDTO extends RefreshDTO {
  const factory _RefreshDTO(
      {@JsonKey(name: 'access_token')
          required final String accessToken,
      @JsonKey(name: 'access_token_expired')
          required final int accessTokenExpired}) = _$_RefreshDTO;
  const _RefreshDTO._() : super._();

  factory _RefreshDTO.fromJson(Map<String, dynamic> json) =
      _$_RefreshDTO.fromJson;

  @override
  @JsonKey(name: 'access_token')
  String get accessToken;
  @override
  @JsonKey(name: 'access_token_expired')
  int get accessTokenExpired;
  @override
  @JsonKey(ignore: true)
  _$$_RefreshDTOCopyWith<_$_RefreshDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
