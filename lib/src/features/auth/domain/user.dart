import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sembast/sembast.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const User._();
  const factory User({
    required String id,
    required String email,
    required String name,
    @JsonKey(name: 'access_token') required String accessToken,
    @JsonKey(name: 'refresh_token') required String refreshToken,
    @JsonKey(defaultValue: []) required List<String> roles,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  // ** SEMBAST HELPER
  Map<String, dynamic> toSembast() {
    final json = toJson();
    json['access_token'] = '';
    return json;
  }

  factory User.fromSembast(
      RecordSnapshot<String, Map<String, dynamic>> snapshot) {
    final copiedMap = Map<String, dynamic>.from(snapshot.value);
    return User.fromJson(copiedMap);
  }
}
