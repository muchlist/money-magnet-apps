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
    @JsonKey(defaultValue: '') required String token,
    required int expired,
    required String fcm,
    required String phone,
    required String picture,
    required int created,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  // ** SEMBAST HELPER
  Map<String, dynamic> toSembast() {
    final json = toJson();
    json['token'] = '';
    return json;
  }

  factory User.fromSembast(
      RecordSnapshot<String, Map<String, dynamic>> snapshot) {
    final copiedMap = Map<String, dynamic>.from(snapshot.value);
    return User.fromJson(copiedMap);
  }
}
