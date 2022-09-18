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
  @JsonKey(name: 'message')
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  LoginDTO? get data => throw _privateConstructorUsedError;
  @JsonKey(name: 'errors')
  Map<String, String>? get errors => throw _privateConstructorUsedError;

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
      {@JsonKey(name: 'message') String message,
      @JsonKey(name: 'data') LoginDTO? data,
      @JsonKey(name: 'errors') Map<String, String>? errors});

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
    Object? message = freezed,
    Object? data = freezed,
    Object? errors = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as LoginDTO?,
      errors: errors == freezed
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
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
      {@JsonKey(name: 'message') String message,
      @JsonKey(name: 'data') LoginDTO? data,
      @JsonKey(name: 'errors') Map<String, String>? errors});

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
    Object? message = freezed,
    Object? data = freezed,
    Object? errors = freezed,
  }) {
    return _then(_$_LoginResponseDTO(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as LoginDTO?,
      errors: errors == freezed
          ? _value._errors
          : errors // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LoginResponseDTO extends _LoginResponseDTO {
  const _$_LoginResponseDTO(
      {@JsonKey(name: 'message') required this.message,
      @JsonKey(name: 'data') required this.data,
      @JsonKey(name: 'errors') required final Map<String, String>? errors})
      : _errors = errors,
        super._();

  factory _$_LoginResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$$_LoginResponseDTOFromJson(json);

  @override
  @JsonKey(name: 'message')
  final String message;
  @override
  @JsonKey(name: 'data')
  final LoginDTO? data;
  final Map<String, String>? _errors;
  @override
  @JsonKey(name: 'errors')
  Map<String, String>? get errors {
    final value = _errors;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'LoginResponseDTO(message: $message, data: $data, errors: $errors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginResponseDTO &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.data, data) &&
            const DeepCollectionEquality().equals(other._errors, _errors));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(data),
      const DeepCollectionEquality().hash(_errors));

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
      {@JsonKey(name: 'message')
          required final String message,
      @JsonKey(name: 'data')
          required final LoginDTO? data,
      @JsonKey(name: 'errors')
          required final Map<String, String>? errors}) = _$_LoginResponseDTO;
  const _LoginResponseDTO._() : super._();

  factory _LoginResponseDTO.fromJson(Map<String, dynamic> json) =
      _$_LoginResponseDTO.fromJson;

  @override
  @JsonKey(name: 'message')
  String get message;
  @override
  @JsonKey(name: 'data')
  LoginDTO? get data;
  @override
  @JsonKey(name: 'errors')
  Map<String, String>? get errors;
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
  @JsonKey(name: 'access_token', defaultValue: "")
  String get accessToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'expired_token', defaultValue: 0)
  int get expiredToken => throw _privateConstructorUsedError;
  MemberDTO get member => throw _privateConstructorUsedError;

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
      {@JsonKey(name: 'access_token', defaultValue: "") String accessToken,
      @JsonKey(name: 'expired_token', defaultValue: 0) int expiredToken,
      MemberDTO member});

  $MemberDTOCopyWith<$Res> get member;
}

/// @nodoc
class _$LoginDTOCopyWithImpl<$Res> implements $LoginDTOCopyWith<$Res> {
  _$LoginDTOCopyWithImpl(this._value, this._then);

  final LoginDTO _value;
  // ignore: unused_field
  final $Res Function(LoginDTO) _then;

  @override
  $Res call({
    Object? accessToken = freezed,
    Object? expiredToken = freezed,
    Object? member = freezed,
  }) {
    return _then(_value.copyWith(
      accessToken: accessToken == freezed
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      expiredToken: expiredToken == freezed
          ? _value.expiredToken
          : expiredToken // ignore: cast_nullable_to_non_nullable
              as int,
      member: member == freezed
          ? _value.member
          : member // ignore: cast_nullable_to_non_nullable
              as MemberDTO,
    ));
  }

  @override
  $MemberDTOCopyWith<$Res> get member {
    return $MemberDTOCopyWith<$Res>(_value.member, (value) {
      return _then(_value.copyWith(member: value));
    });
  }
}

/// @nodoc
abstract class _$$_LoginDTOCopyWith<$Res> implements $LoginDTOCopyWith<$Res> {
  factory _$$_LoginDTOCopyWith(
          _$_LoginDTO value, $Res Function(_$_LoginDTO) then) =
      __$$_LoginDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'access_token', defaultValue: "") String accessToken,
      @JsonKey(name: 'expired_token', defaultValue: 0) int expiredToken,
      MemberDTO member});

  @override
  $MemberDTOCopyWith<$Res> get member;
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
    Object? accessToken = freezed,
    Object? expiredToken = freezed,
    Object? member = freezed,
  }) {
    return _then(_$_LoginDTO(
      accessToken: accessToken == freezed
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      expiredToken: expiredToken == freezed
          ? _value.expiredToken
          : expiredToken // ignore: cast_nullable_to_non_nullable
              as int,
      member: member == freezed
          ? _value.member
          : member // ignore: cast_nullable_to_non_nullable
              as MemberDTO,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LoginDTO extends _LoginDTO {
  const _$_LoginDTO(
      {@JsonKey(name: 'access_token', defaultValue: "")
          required this.accessToken,
      @JsonKey(name: 'expired_token', defaultValue: 0)
          required this.expiredToken,
      required this.member})
      : super._();

  factory _$_LoginDTO.fromJson(Map<String, dynamic> json) =>
      _$$_LoginDTOFromJson(json);

  @override
  @JsonKey(name: 'access_token', defaultValue: "")
  final String accessToken;
  @override
  @JsonKey(name: 'expired_token', defaultValue: 0)
  final int expiredToken;
  @override
  final MemberDTO member;

  @override
  String toString() {
    return 'LoginDTO(accessToken: $accessToken, expiredToken: $expiredToken, member: $member)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginDTO &&
            const DeepCollectionEquality()
                .equals(other.accessToken, accessToken) &&
            const DeepCollectionEquality()
                .equals(other.expiredToken, expiredToken) &&
            const DeepCollectionEquality().equals(other.member, member));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(accessToken),
      const DeepCollectionEquality().hash(expiredToken),
      const DeepCollectionEquality().hash(member));

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
      {@JsonKey(name: 'access_token', defaultValue: "")
          required final String accessToken,
      @JsonKey(name: 'expired_token', defaultValue: 0)
          required final int expiredToken,
      required final MemberDTO member}) = _$_LoginDTO;
  const _LoginDTO._() : super._();

  factory _LoginDTO.fromJson(Map<String, dynamic> json) = _$_LoginDTO.fromJson;

  @override
  @JsonKey(name: 'access_token', defaultValue: "")
  String get accessToken;
  @override
  @JsonKey(name: 'expired_token', defaultValue: 0)
  int get expiredToken;
  @override
  MemberDTO get member;
  @override
  @JsonKey(ignore: true)
  _$$_LoginDTOCopyWith<_$_LoginDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

MemberDTO _$MemberDTOFromJson(Map<String, dynamic> json) {
  return _MemberDTO.fromJson(json);
}

/// @nodoc
mixin _$MemberDTO {
  @JsonKey(defaultValue: "")
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: "")
  String get phone => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: "")
  String get picture => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_verified')
  bool get isVerified => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  int get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'activation_link', defaultValue: '')
  String get activationLink => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MemberDTOCopyWith<MemberDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemberDTOCopyWith<$Res> {
  factory $MemberDTOCopyWith(MemberDTO value, $Res Function(MemberDTO) then) =
      _$MemberDTOCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(defaultValue: "")
          String id,
      String name,
      String email,
      @JsonKey(defaultValue: "")
          String phone,
      @JsonKey(defaultValue: "")
          String picture,
      @JsonKey(name: 'is_verified')
          bool isVerified,
      @JsonKey(name: 'created_at')
          int createdAt,
      @JsonKey(name: 'activation_link', defaultValue: '')
          String activationLink});
}

/// @nodoc
class _$MemberDTOCopyWithImpl<$Res> implements $MemberDTOCopyWith<$Res> {
  _$MemberDTOCopyWithImpl(this._value, this._then);

  final MemberDTO _value;
  // ignore: unused_field
  final $Res Function(MemberDTO) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? picture = freezed,
    Object? isVerified = freezed,
    Object? createdAt = freezed,
    Object? activationLink = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      picture: picture == freezed
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String,
      isVerified: isVerified == freezed
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int,
      activationLink: activationLink == freezed
          ? _value.activationLink
          : activationLink // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_MemberDTOCopyWith<$Res> implements $MemberDTOCopyWith<$Res> {
  factory _$$_MemberDTOCopyWith(
          _$_MemberDTO value, $Res Function(_$_MemberDTO) then) =
      __$$_MemberDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(defaultValue: "")
          String id,
      String name,
      String email,
      @JsonKey(defaultValue: "")
          String phone,
      @JsonKey(defaultValue: "")
          String picture,
      @JsonKey(name: 'is_verified')
          bool isVerified,
      @JsonKey(name: 'created_at')
          int createdAt,
      @JsonKey(name: 'activation_link', defaultValue: '')
          String activationLink});
}

/// @nodoc
class __$$_MemberDTOCopyWithImpl<$Res> extends _$MemberDTOCopyWithImpl<$Res>
    implements _$$_MemberDTOCopyWith<$Res> {
  __$$_MemberDTOCopyWithImpl(
      _$_MemberDTO _value, $Res Function(_$_MemberDTO) _then)
      : super(_value, (v) => _then(v as _$_MemberDTO));

  @override
  _$_MemberDTO get _value => super._value as _$_MemberDTO;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? picture = freezed,
    Object? isVerified = freezed,
    Object? createdAt = freezed,
    Object? activationLink = freezed,
  }) {
    return _then(_$_MemberDTO(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      picture: picture == freezed
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String,
      isVerified: isVerified == freezed
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int,
      activationLink: activationLink == freezed
          ? _value.activationLink
          : activationLink // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MemberDTO extends _MemberDTO {
  const _$_MemberDTO(
      {@JsonKey(defaultValue: "")
          required this.id,
      required this.name,
      required this.email,
      @JsonKey(defaultValue: "")
          required this.phone,
      @JsonKey(defaultValue: "")
          required this.picture,
      @JsonKey(name: 'is_verified')
          required this.isVerified,
      @JsonKey(name: 'created_at')
          required this.createdAt,
      @JsonKey(name: 'activation_link', defaultValue: '')
          required this.activationLink})
      : super._();

  factory _$_MemberDTO.fromJson(Map<String, dynamic> json) =>
      _$$_MemberDTOFromJson(json);

  @override
  @JsonKey(defaultValue: "")
  final String id;
  @override
  final String name;
  @override
  final String email;
  @override
  @JsonKey(defaultValue: "")
  final String phone;
  @override
  @JsonKey(defaultValue: "")
  final String picture;
  @override
  @JsonKey(name: 'is_verified')
  final bool isVerified;
  @override
  @JsonKey(name: 'created_at')
  final int createdAt;
  @override
  @JsonKey(name: 'activation_link', defaultValue: '')
  final String activationLink;

  @override
  String toString() {
    return 'MemberDTO(id: $id, name: $name, email: $email, phone: $phone, picture: $picture, isVerified: $isVerified, createdAt: $createdAt, activationLink: $activationLink)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MemberDTO &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.phone, phone) &&
            const DeepCollectionEquality().equals(other.picture, picture) &&
            const DeepCollectionEquality()
                .equals(other.isVerified, isVerified) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality()
                .equals(other.activationLink, activationLink));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(phone),
      const DeepCollectionEquality().hash(picture),
      const DeepCollectionEquality().hash(isVerified),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(activationLink));

  @JsonKey(ignore: true)
  @override
  _$$_MemberDTOCopyWith<_$_MemberDTO> get copyWith =>
      __$$_MemberDTOCopyWithImpl<_$_MemberDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MemberDTOToJson(
      this,
    );
  }
}

abstract class _MemberDTO extends MemberDTO {
  const factory _MemberDTO(
      {@JsonKey(defaultValue: "")
          required final String id,
      required final String name,
      required final String email,
      @JsonKey(defaultValue: "")
          required final String phone,
      @JsonKey(defaultValue: "")
          required final String picture,
      @JsonKey(name: 'is_verified')
          required final bool isVerified,
      @JsonKey(name: 'created_at')
          required final int createdAt,
      @JsonKey(name: 'activation_link', defaultValue: '')
          required final String activationLink}) = _$_MemberDTO;
  const _MemberDTO._() : super._();

  factory _MemberDTO.fromJson(Map<String, dynamic> json) =
      _$_MemberDTO.fromJson;

  @override
  @JsonKey(defaultValue: "")
  String get id;
  @override
  String get name;
  @override
  String get email;
  @override
  @JsonKey(defaultValue: "")
  String get phone;
  @override
  @JsonKey(defaultValue: "")
  String get picture;
  @override
  @JsonKey(name: 'is_verified')
  bool get isVerified;
  @override
  @JsonKey(name: 'created_at')
  int get createdAt;
  @override
  @JsonKey(name: 'activation_link', defaultValue: '')
  String get activationLink;
  @override
  @JsonKey(ignore: true)
  _$$_MemberDTOCopyWith<_$_MemberDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
