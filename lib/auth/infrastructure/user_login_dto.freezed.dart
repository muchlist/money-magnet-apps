// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_login_dto.dart';

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
      _$LoginResponseDTOCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'data') LoginDTO? data,
      @JsonKey(name: 'error') String? error});

  $LoginDTOCopyWith<$Res>? get data;
}

/// @nodoc
class _$LoginResponseDTOCopyWithImpl<$Res>
    implements $LoginResponseDTOCopyWith<$Res> {
  _$LoginResponseDTOCopyWithImpl(this._value, this._then);

  final LoginResponseDTO _value;
  // ignore: unused_field
  final $Res Function(LoginResponseDTO) _then;

  @override
  $Res call({
    Object? data = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as LoginDTO?,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $LoginDTOCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $LoginDTOCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value));
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
  $Res call(
      {@JsonKey(name: 'data') LoginDTO? data,
      @JsonKey(name: 'error') String? error});

  @override
  $LoginDTOCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_LoginResponseDTOCopyWithImpl<$Res>
    extends _$LoginResponseDTOCopyWithImpl<$Res>
    implements _$$_LoginResponseDTOCopyWith<$Res> {
  __$$_LoginResponseDTOCopyWithImpl(
      _$_LoginResponseDTO _value, $Res Function(_$_LoginResponseDTO) _then)
      : super(_value, (v) => _then(v as _$_LoginResponseDTO));

  @override
  _$_LoginResponseDTO get _value => super._value as _$_LoginResponseDTO;

  @override
  $Res call({
    Object? data = freezed,
    Object? error = freezed,
  }) {
    return _then(_$_LoginResponseDTO(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as LoginDTO?,
      error: error == freezed
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
            const DeepCollectionEquality().equals(other.data, data) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(data),
      const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
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

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginDTOCopyWith<LoginDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginDTOCopyWith<$Res> {
  factory $LoginDTOCopyWith(LoginDTO value, $Res Function(LoginDTO) then) =
      _$LoginDTOCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String email,
      String name,
      @JsonKey(defaultValue: []) List<String> roles,
      @JsonKey(name: 'access_token') String accessToken,
      @JsonKey(name: 'refresh_token') String refreshToken});
}

/// @nodoc
class _$LoginDTOCopyWithImpl<$Res> implements $LoginDTOCopyWith<$Res> {
  _$LoginDTOCopyWithImpl(this._value, this._then);

  final LoginDTO _value;
  // ignore: unused_field
  final $Res Function(LoginDTO) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? email = freezed,
    Object? name = freezed,
    Object? roles = freezed,
    Object? accessToken = freezed,
    Object? refreshToken = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      roles: roles == freezed
          ? _value.roles
          : roles // ignore: cast_nullable_to_non_nullable
              as List<String>,
      accessToken: accessToken == freezed
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: refreshToken == freezed
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_LoginDTOCopyWith<$Res> implements $LoginDTOCopyWith<$Res> {
  factory _$$_LoginDTOCopyWith(
          _$_LoginDTO value, $Res Function(_$_LoginDTO) then) =
      __$$_LoginDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String email,
      String name,
      @JsonKey(defaultValue: []) List<String> roles,
      @JsonKey(name: 'access_token') String accessToken,
      @JsonKey(name: 'refresh_token') String refreshToken});
}

/// @nodoc
class __$$_LoginDTOCopyWithImpl<$Res> extends _$LoginDTOCopyWithImpl<$Res>
    implements _$$_LoginDTOCopyWith<$Res> {
  __$$_LoginDTOCopyWithImpl(
      _$_LoginDTO _value, $Res Function(_$_LoginDTO) _then)
      : super(_value, (v) => _then(v as _$_LoginDTO));

  @override
  _$_LoginDTO get _value => super._value as _$_LoginDTO;

  @override
  $Res call({
    Object? id = freezed,
    Object? email = freezed,
    Object? name = freezed,
    Object? roles = freezed,
    Object? accessToken = freezed,
    Object? refreshToken = freezed,
  }) {
    return _then(_$_LoginDTO(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      roles: roles == freezed
          ? _value._roles
          : roles // ignore: cast_nullable_to_non_nullable
              as List<String>,
      accessToken: accessToken == freezed
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: refreshToken == freezed
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
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
      @JsonKey(defaultValue: []) required final List<String> roles,
      @JsonKey(name: 'access_token') required this.accessToken,
      @JsonKey(name: 'refresh_token') required this.refreshToken})
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
  String toString() {
    return 'LoginDTO(id: $id, email: $email, name: $name, roles: $roles, accessToken: $accessToken, refreshToken: $refreshToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginDTO &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other._roles, _roles) &&
            const DeepCollectionEquality()
                .equals(other.accessToken, accessToken) &&
            const DeepCollectionEquality()
                .equals(other.refreshToken, refreshToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(_roles),
      const DeepCollectionEquality().hash(accessToken),
      const DeepCollectionEquality().hash(refreshToken));

  @JsonKey(ignore: true)
  @override
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
          @JsonKey(defaultValue: []) required final List<String> roles,
          @JsonKey(name: 'access_token') required final String accessToken,
          @JsonKey(name: 'refresh_token') required final String refreshToken}) =
      _$_LoginDTO;
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
  @JsonKey(ignore: true)
  _$$_LoginDTOCopyWith<_$_LoginDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
