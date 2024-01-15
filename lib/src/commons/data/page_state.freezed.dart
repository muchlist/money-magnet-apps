// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PageState {
  bool get isHomePageNeedUpdate => throw _privateConstructorUsedError;
  bool get isDetailPageNeedUpdate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PageStateCopyWith<PageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PageStateCopyWith<$Res> {
  factory $PageStateCopyWith(PageState value, $Res Function(PageState) then) =
      _$PageStateCopyWithImpl<$Res, PageState>;
  @useResult
  $Res call({bool isHomePageNeedUpdate, bool isDetailPageNeedUpdate});
}

/// @nodoc
class _$PageStateCopyWithImpl<$Res, $Val extends PageState>
    implements $PageStateCopyWith<$Res> {
  _$PageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isHomePageNeedUpdate = null,
    Object? isDetailPageNeedUpdate = null,
  }) {
    return _then(_value.copyWith(
      isHomePageNeedUpdate: null == isHomePageNeedUpdate
          ? _value.isHomePageNeedUpdate
          : isHomePageNeedUpdate // ignore: cast_nullable_to_non_nullable
              as bool,
      isDetailPageNeedUpdate: null == isDetailPageNeedUpdate
          ? _value.isDetailPageNeedUpdate
          : isDetailPageNeedUpdate // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PageStateImplCopyWith<$Res>
    implements $PageStateCopyWith<$Res> {
  factory _$$PageStateImplCopyWith(
          _$PageStateImpl value, $Res Function(_$PageStateImpl) then) =
      __$$PageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isHomePageNeedUpdate, bool isDetailPageNeedUpdate});
}

/// @nodoc
class __$$PageStateImplCopyWithImpl<$Res>
    extends _$PageStateCopyWithImpl<$Res, _$PageStateImpl>
    implements _$$PageStateImplCopyWith<$Res> {
  __$$PageStateImplCopyWithImpl(
      _$PageStateImpl _value, $Res Function(_$PageStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isHomePageNeedUpdate = null,
    Object? isDetailPageNeedUpdate = null,
  }) {
    return _then(_$PageStateImpl(
      isHomePageNeedUpdate: null == isHomePageNeedUpdate
          ? _value.isHomePageNeedUpdate
          : isHomePageNeedUpdate // ignore: cast_nullable_to_non_nullable
              as bool,
      isDetailPageNeedUpdate: null == isDetailPageNeedUpdate
          ? _value.isDetailPageNeedUpdate
          : isDetailPageNeedUpdate // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$PageStateImpl extends _PageState {
  const _$PageStateImpl(
      {required this.isHomePageNeedUpdate,
      required this.isDetailPageNeedUpdate})
      : super._();

  @override
  final bool isHomePageNeedUpdate;
  @override
  final bool isDetailPageNeedUpdate;

  @override
  String toString() {
    return 'PageState(isHomePageNeedUpdate: $isHomePageNeedUpdate, isDetailPageNeedUpdate: $isDetailPageNeedUpdate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PageStateImpl &&
            (identical(other.isHomePageNeedUpdate, isHomePageNeedUpdate) ||
                other.isHomePageNeedUpdate == isHomePageNeedUpdate) &&
            (identical(other.isDetailPageNeedUpdate, isDetailPageNeedUpdate) ||
                other.isDetailPageNeedUpdate == isDetailPageNeedUpdate));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isHomePageNeedUpdate, isDetailPageNeedUpdate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PageStateImplCopyWith<_$PageStateImpl> get copyWith =>
      __$$PageStateImplCopyWithImpl<_$PageStateImpl>(this, _$identity);
}

abstract class _PageState extends PageState {
  const factory _PageState(
      {required final bool isHomePageNeedUpdate,
      required final bool isDetailPageNeedUpdate}) = _$PageStateImpl;
  const _PageState._() : super._();

  @override
  bool get isHomePageNeedUpdate;
  @override
  bool get isDetailPageNeedUpdate;
  @override
  @JsonKey(ignore: true)
  _$$PageStateImplCopyWith<_$PageStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
